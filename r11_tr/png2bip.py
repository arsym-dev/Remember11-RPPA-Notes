from struct import pack, unpack
import os
import io
from PIL import Image
import math
import numpy as np
#import lzss3 as lzss
from clzs import decode_file, encode_file

dir = "D:/Games/VN/Remember11/Extracted/BG/en-repack/"
fnums = [71, 81, 83, 85, 87, 89, 91, 93, 95, 99, 103, 477, 481, 485, 489, 493, 687] #[71, 103, 481, 489] #[81, 83, 85, 87, 89, 91, 93, 95, 99, 103]
fname_format = "File_{}.png"
swap_color_channels = True


#dir = ""
#fname = "BEV_CO30A.png"
sub_dim = 256

class SubImage:
    def __init__(self, name, img, col, row):
        self.fullxres, self.fullyres = img.size
        
        self.x_start = col*sub_dim
        self.y_start = row*sub_dim
        self.width = min(sub_dim, self.fullxres-self.x_start)
        self.height = min(sub_dim, self.fullyres-self.y_start)
        
        self.halfxres = int(self.fullxres*0.8)
        self.halfyres = int(self.fullyres*448/600)
        
        self.col = col
        self.row = row
        self.img = img.crop((self.x_start, self.y_start, self.x_start+self.width, self.y_start+self.height))
        self.name = "col\{}.tm2@{}_{}_{}x{}".format(name, self.x_start, self.y_start, self.width, self.height)

    def create_subimage_entry(self):
        ## Save as png, then get the bytestream of that
        mem_stream = io.BytesIO()
        self.img.save(mem_stream, 'png')
        img_data = mem_stream.getvalue()
        
        section_length = len(img_data)+124
        sub_unknown2 = 0x15
        u_length = 4*self.width*self.height
        
        sub_name = self.name.encode('utf-8')
        for _ in range(64-len(sub_name)):
            sub_name += pack("B", 0)
        
        
        data_out = b''
        data_out += 'PNGFILE2'.encode('utf-8')
        data_out += pack("IIHHHHI",
            self.width, self.height, self.fullxres, self.halfxres,
            self.fullyres, self.halfyres, section_length)
        data_out += sub_name
        data_out += pack("IIIIIIII", 
            u_length, 0, sub_unknown2, 0, 0, 0, 
            self.width, self.height)
        data_out += img_data
        
        return data_out


class TM2:
    def __init__(self, img):
        self.img = img.resize((160, 112))
        self.header = b'TIM2\x04\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x000\x18\x01\x00\x00\x00\x00\x00\x00\x18\x01\x000\x00\x00\x00\x00\x01\x00\x03\xa0\x00p\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'
    
    def create_file(self):
        arr = np.array(self.img)
        arr[:,:,3] = 0x80 #adjust alpha
        data = arr.flatten().tostring()
        
        return self.header + data


#decode_file('File_688', 'File_688.unbip')
#encode_file('File_688.unbip', 'File_688.bip2')

for fnum in fnums:
    fname = fname_format.format(fnum)
    
    #####################
    ## Create subimages
    #####################
    img = Image.open(os.path.join(dir,fname))
    img = img.convert('RGBA') ## Make sure we've got an alpha channel

    thumbnail = TM2(img)
    tm2_data = thumbnail.create_file()
    with open('t.tmp', 'wb') as f:
        f.write(tm2_data)
    encoded = encode_file('t.tmp', os.path.join(dir, "File_{}".format(fnum+1)))


    #RGB to RBG
    if swap_color_channels:
        np_image = np.array(img)
        np_image[:,:,[0,1,2]] = np_image[:,:,[2,1,0]]
        img = Image.fromarray(np_image)


    base_name, _ = os.path.splitext(os.path.basename(fname))
    xres, yres = img.size

    subimgs = []
    subimgs_data = []
    for j in range(math.ceil(yres/sub_dim)):
        for i in range(math.ceil(xres/sub_dim)):
            si = SubImage(base_name, img, i, j)
            subimgs.append(si)
            subimgs_data.append(si.create_subimage_entry())

    num_subimgs = len(subimgs)




    ###############
    ## Create subtable which creates header data for each entry
    ###############
    subimg_table_data = b''
    subimg_table_data += pack("IIHH", num_subimgs, 0, xres, yres)

    sub_offset = 0
    for idx, si in enumerate(subimgs):
        sub_unknown = 0x202e0000
        subimg_table_data += pack("IIHHHHHHHHI",
            7, sub_unknown,
            si.x_start, si.y_start, si.width, si.height,
            si.halfxres, si.halfyres, si.fullxres, si.fullyres,
            sub_offset)
        sub_offset += len(subimgs_data[idx])


    ######
    ## Write the data
    ######

    data_out = b''

    ## Header
    hdr_subtable_starts = 0x80
    header_length = 0x80+len(subimg_table_data)
    file_start2 = math.ceil(header_length/128)*128
    file_start3 = file_start2

    file_length = file_start2+8
    for sid in subimgs_data:
        file_length += len(sid)

    data_out += pack("IIIIII",5,hdr_subtable_starts,header_length,file_start2, file_start3, file_length)


    ## Trailing header zeros
    end_of_header = len(data_out)
    for _ in range(0x80-end_of_header):
        data_out += pack("B", 0)


    ## Write subimage table
    data_out += subimg_table_data

    ## Trailing header zeros
    end_of_header = len(data_out)
    for _ in range(file_start2-end_of_header):
        ## Pad till we reach image data
        data_out += pack("B", 0)


    ## Write image entries
    data_out += 'EMUARC__'.encode('utf-8')
    for sid in subimgs_data:
        data_out += sid


    #######
    ## Write the final file
    #######
    with open(os.path.join(dir, os.path.splitext(fname)[0]), "wb") as f:
        f.write(data_out)
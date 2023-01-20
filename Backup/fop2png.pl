#!/usr/bin/perl
use strict;
use Imager;

# dfield_00:  offset of header data (0)?
# dfield_04:  0?
# dfield_08:  offset of size data
# dfield_0c:  total length of size data
# dfield_10:  offset of glyph image data
# dfield_14:  total length of glyph image data
# wfield_18:  size of each glyph image data in bytes
# 1a - 1d == 05 30 30 00  Byte 1b and/or 1c could be horizontal or vertical size in pixels, or vertical size in bytes.

sub get_file {
    local $/;
    my $FH;
    open $FH, $_[0] or die $!;
    binmode $FH;
    return <$FH>;
}

#my ($in_fil, $out_fil) = ('r11_tr/big-font2626.xxx', 'font.png');
my ($in_fil, $out_fil) = ('new-font.dat', 'font.png');

my $dat = get_file ($in_fil);
my $data_len = length($dat);

my $GLYPH_BYTE_WIDTH = 12;
my $GLYPH_PIXEL_WIDTH = 4*$GLYPH_BYTE_WIDTH;
my $GLYPH_BYTE_HEIGHT = 48;
my $GLYPH_PIXEL_HEIGHT = $GLYPH_BYTE_HEIGHT;
my $GLYPH_BYTES = $GLYPH_BYTE_WIDTH * $GLYPH_BYTE_HEIGHT;
my $FONT_HEADER_BYTES = unpack ("V", substr ($dat, 0x10, 4));
my $N_GLYPHS = int(($data_len - $FONT_HEADER_BYTES) / ($GLYPH_BYTES));

my $SIZE_DATA_STARTS = unpack ("V", substr ($dat, 0x08, 4));
my $SIZE_DATA_SIZE = unpack ("V", substr ($dat, 0x0c, 4));
if ($N_GLYPHS * 2 != $SIZE_DATA_SIZE) {
    print "Warning: Glyph count mismatch $N_GLYPHS vs ", $SIZE_DATA_SIZE / 2, "\n";
}
my @size_data = unpack ("C*", substr ($dat, $SIZE_DATA_STARTS, $SIZE_DATA_SIZE));

my $MAX_IMAGE_WIDTH = 1270;
my $GLYPHS_PER_ROW = int (($MAX_IMAGE_WIDTH) / $GLYPH_PIXEL_WIDTH);
$GLYPHS_PER_ROW = 188;
#$GLYPHS_PER_ROW = 26;
my $IMAGE_ROWS = int (($N_GLYPHS - 1) / $GLYPHS_PER_ROW) + 1;

print "Planning to print $N_GLYPHS glyphs in $IMAGE_ROWS rows of $GLYPHS_PER_ROW \n";
print "Total of ", $FONT_HEADER_BYTES, " bytes in header.\n";
print "Excess is ", $data_len - $FONT_HEADER_BYTES - $N_GLYPHS * $GLYPH_BYTES, ".\n";
print "Excess glyphs are ", $IMAGE_ROWS * $GLYPHS_PER_ROW - $N_GLYPHS, ".\n";

my $X_SIZE = $GLYPH_PIXEL_WIDTH * $GLYPHS_PER_ROW;
my $Y_SIZE = $GLYPH_PIXEL_HEIGHT * $IMAGE_ROWS;

#print "Total pixels are ", $X_SIZE * $Y_SIZE, ".\n";

#print "\@size_data = (@size_data)\n";die;
#my @pixels = ("\x7f"x4)x($X_SIZE*$Y_SIZE);

my $image = Imager->new (xsize => $X_SIZE, ysize => $Y_SIZE, channels => 3);
$| = 1;
my @scanline = ("\x7f"x4)x($X_SIZE);
for (my $y = 0; $y < $Y_SIZE; ++ $y) {
    my $gy = int ($y / $GLYPH_PIXEL_HEIGHT);
    my $dy = $y % $GLYPH_PIXEL_HEIGHT;
    printf ("Processing row %04d // %04d  \r", $y, $Y_SIZE);
    for (my $x = 0; $x < $X_SIZE; $x += 4) {
	my $gx = int ($x / $GLYPH_PIXEL_WIDTH);
	my $dx = $x % $GLYPH_PIXEL_WIDTH;
	my $n = $gy * $GLYPHS_PER_ROW + $gx;
	my $fourpixels = ord (substr ($dat, $FONT_HEADER_BYTES + $n * $GLYPH_BYTES + $dy * $GLYPH_BYTE_WIDTH + $dx / 4, 1));
	for (my $j = 0; $j < 4; ++ $j) {
	    my $red = (($fourpixels >> (2*(3-$j))) & 0x3) * (255/3);
	    my $green = (($dx + $j == 0) || $dy == 0) ? 255 : 0;
	    my $blue = (($dx + $j < 2*$size_data[2*$n]) ||
			($dx + $j > 2*$size_data[2*$n+1])) ? 255 : 0;
	    $scanline[$x+$j] = pack ("CCCC", $red, $green, $blue, 0xff);
	}
    }
    $image->setscanline ('y'=>$y, x=>0, pixels=>join ('', @scanline));
}
$image->write (file => $out_fil);



#$| = 1;
#for (my $n = 0; $n < $N_GLYPHS; ++ $n) {
#    print "Processing glyph $n\r";
#    my $x_base = int ($n % $GLYPHS_PER_ROW);
#    my $y_base = int ($n / $GLYPHS_PER_ROW);
#    my $pixel_base = $y_base * $X_SIZE + $x_base;#
#
#    my $dat_base = $FONT_HEADER_BYTES + $n * $GLYPH_BYTES;
#    my @pixel_dat = unpack ("C*", substr ($dat, $dat_base, $GLYPH_BYTES));
#    
#    my $lcol = 2*$size_data[2*$n];
#    my $rcol = 2*$size_data[2*$n+1];
#    my $i = 0;
#    for (my $y = 0; $y < $GLYPH_BYTE_HEIGHT; ++ $y) {
#	for (my $x = 0; $x < $GLYPH_BYTE_WIDTH; ++ $x) {
#	    my $px = $pixel_dat[$i ++];
#	    for (my $j = 0; $j < 4; ++ $j) {
#		my $red = (($px >> (2 * $j)) & 0x3) * (255/3);
#		my $blue = ($x == 0 || $y == 0) ? 255 : 0;
#		my $green = ((4*$x + $j <= $lcol) || (4*$x+$j >= $rcol)) ? 255:0;
#		$pixels[$pixel_base + $y*$X_SIZE + 4*$x + $j] = pack ("CCCC", $red, $blue, $green, 0xff);
#	    }
#	}
#    }
#}
#print "\n wrote all glyphs\n";
#
#for (my $y = 0; $y < $Y_SIZE; ++ $y) {
#    print "Writing row $y\r";
#    $image->setscanline ('y'=>$y, 'x'=>0, width => $X_SIZE, pixels => join ('', @pixels[$y*$X_SIZE..($y+1)*$X_SIZE-1]));
#}
#print "\ndone\n";
#$image->write (file => 'font.png');


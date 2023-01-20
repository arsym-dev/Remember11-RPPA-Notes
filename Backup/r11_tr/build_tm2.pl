#!/usr/bin/perl
use strict;
use unbip;
use Imager;


# DWORD 0 = "TIM2"
# DWORD 1 = 0x10004
# DWORD 2 ... 3 = 0
# DWORD 4 = compressed length + 124
# DWORD 5 = 0
# DWORD 6 =  ( = dword 4 )
# DWORD 7 = 
# DWORD 8 = 
# DWORD 9 = xy resolution
# DWORD 10 ... 15 = 0
# DWORD 16..17 = "PNGFILE3"
# DWORD 18 = X resolution
# DWORD 19 = y resolution
# DWORD 20 = xx resolution
# DWORD 21 = yy resolution
# DWORD 22 =  ( = dword 4 )
# DWORD 23 .. 38 = File name (null padded)
# DWORD 39 = uncompressed data size
# DWORD 40 = 0
# DWORD 41 =  always 21 (0x15)
# DWORD 42 = 
# DWORD 43 .. 44 = 0
# DWORD 45 = x resolution
# DWORD 46 = y resolution

#sub handle_file {
sub build_tm2 {
    #@ARGV = ($_[0]);
    my ($orig_dir, $out_dir, $in_eng_dir, $bipfile) = @_;
    @ARGV = ($_[0].$bipfile);
    local $/;
    my ($dat, $was_compressed) = do_uncompress (<>, 0);
    print "Data was ", ($was_compressed ? "":"not "), "compressed.\n";

    my $n_files = unpack ("V", substr ($dat, 0, 4));
    my @files_start = (unpack ("V*", substr ($dat, 4, 4*$n_files)));
    my $base_off = 4*($n_files + 1);
    while (($base_off & 0xf) != 0) { $base_off += 4; }

    my @img_files = ();
    my $out_off = 0;

    for (my $i = 0; $i < $n_files; ++ $i) {
	my $new_off = $base_off + ($files_start[$i] << 4);
	my $subdat = substr ($dat, $new_off, 188);
	print "$_[0] $i: ", unpack ("Z*", substr ($subdat, 23*4)), "\n";

	my $in_name = $in_eng_dir.$bipfile.'_'.unpack ("Z*", substr ($subdat, 23*4)).'.png';


	if (! -f $in_name) {
	    print "Looking for '$in_name': not found\n";
	    my $dat_ends = ($i + 1 < $n_files)
		? ($base_off + ($files_start[$i+1] << 4)) 
		: length ($dat);
	    push @img_files, substr ($dat, $new_off, $dat_ends - $new_off);
	} else {
	    print "Looking for '$in_name': found\n";
	    my (@list) = unpack ("V*", $subdat);

	    my $img   = Imager->new (file => $in_name);
	    my $xres  = $img->getwidth();
	    my $yres  = $img->getheight();
	    my $nchan = $img->getchannels();
	    my $img2  = Imager->new ( xsize => $xres, ysize => $yres, channels => 4);
	    my $tmp;
	    for (my $yy = 0; $yy < $yres; ++ $yy) {
		my @colors = unpack ("C*", $img->getscanline ('y', $yy, x => 0, width => $xres));
		for (my $xx = 0; $xx < 4 * $xres; $xx += 4) {
		    $tmp = $colors[$xx];
		    $colors[$xx] = $colors[$xx+2];
		    $colors[$xx+2] = $tmp;
		    $tmp = $colors[$xx+3];
		    if ($nchan < 4 || $tmp == 0xff) {
			$tmp = 0x80;
		    } else {
			$tmp /= 2;
		    }
		    $colors[$xx + 3] = $tmp;
		}
		$img2->setscanline ('y', $yy, x => 0, width => $xres, pixels => pack ("C*", @colors));
	    }

	    my $png_dat;
	    $img2->write ( data => \$png_dat, type => 'png');
	    $list[4] = $list[6] = $list[22] = length($png_dat) + 124;
	    my $excess = ((4 * scalar @list) + length ($png_dat)) % 16;
	    if ($excess != 0) {
		$png_dat .= "\0"x(16 - $excess);
	    }
	    push @img_files, pack ("V*", @list).$png_dat;
	}
	$files_start[$i] = ($out_off >> 4);
	$out_off += length ($img_files[-1]);
    }
    my $OFH;
    open $OFH, ">", $out_dir.$bipfile;
    if ($was_compressed) {
	print $OFH do_compress (join ('', pack ("V*", $n_files, @files_start, (0)x ($base_off/4 - $n_files - 1)), @img_files));
    } else {
	print $OFH pack ("V*", $n_files, @files_start, (0)x ($base_off/4 - $n_files - 1)), @img_files;
    }
}

#my @copy_argv = @ARGV;
#foreach my $f (@copy_argv) {
#    handle_file ($f);
#}

build_tm2 ('etc/', 'etc_en/', 'in_etc_en/', 'album.bip');
build_tm2 ('etc/', 'etc_en/', 'in_etc_en/', 'title.bip'); 

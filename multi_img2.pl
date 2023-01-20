#!/usr/bin/perl

use strict;
use Imager;
#use unbip;
require 'r11_tr/unbip.pm';

undef $/;

# my $png = Imager->new (file => $filename);
# my $png_w = $im->getwidth;
# my $png_h = $im->getheight;

my $make_images = 1;

#IT07A IT07B IT11A IT13A IT13B IT19A IT23A IT23B IT27A EBG02A EBG03A EBG03B EBG18A EBG18B EBG19[A-D] EBG20[A-F] EBG21[B-F] CAL_A0[0-7] CAL_B0[0-7]
# /bin/ls bg/*.[Bb][Ii][Pp] | perl -e 'my @patterns = qw/IT07A IT07B IT11A IT13A IT13B IT19A IT23A IT23B IT27A EBG02A EBG03A EBG03B EBG18A EBG18B EBG19[A-D] EBG20[A-F] EBG21[B-F] CAL_A0[0-7] CAL_B0[0-7]/; while (<>) { chomp $_; foreach my $p (@patterns) { if ($_ =~ m|^bg/${p}.bip|i) { print $_, " "; last; }}} print "\n"'
#bg/cal_a00.bip bg/cal_a01.bip bg/cal_a02.bip bg/cal_a03.bip bg/cal_a04.bip bg/cal_a05.bip bg/cal_a06.bip bg/cal_a07.bip bg/cal_b00.bip bg/cal_b01.bip bg/cal_b02.bip bg/cal_b03.bip bg/cal_b04.bip bg/cal_b05.bip bg/cal_b06.bip bg/cal_b07.bip bg/ebg02a.bip bg/ebg03a.bip bg/ebg03b.bip bg/ebg18a.bip bg/ebg18b.bip bg/ebg19a.bip bg/ebg19b.bip bg/ebg19c.bip bg/ebg19d.bip bg/ebg20a.bip bg/ebg20b.bip bg/ebg20c.bip bg/ebg20d.bip bg/ebg20e.bip bg/ebg20f.bip bg/ebg21b.bip bg/ebg21c.bip bg/ebg21d.bip bg/ebg21e.bip bg/ebg21f.bip bg/it07a.bip bg/it07b.bip bg/it11a.bip bg/it13a.bip bg/it13b.bip bg/it19a.bip bg/it23a.bip bg/it23b.bip bg/it27a.bip 

sub make_cb {
    my $data = shift;
    my $amt_read = 0;
    my $total = length ($$data);
    return sub {
	my $tgt = $_[1];
	print "Callback (read $amt_read, total $total, tgt $tgt)\n";
	if ($amt_read + $tgt >= $total) { 
	    $tgt = $total - $amt_read;
	}
	$amt_read += $tgt;
	return substr ($$data, $amt_read - $tgt, $tgt);
    }
}

	   

sub handle_multipng {
    @ARGV = (@_);
    print "Handling multipng $_[0]\n";
    my $dat = do_uncompress (<>);
    
    my ($hdr_5, $hdr_subtable_starts, $hdr_length, $files_start2, $files_start3, $file_length) = unpack ("V6", substr ($dat, 0, 24));
    die "dword0==$hdr_5, not 5" if $hdr_5 != 5;
    die "dword5==$file_length, not file length (=".length($dat).")" if $file_length != length ($dat);
    print "Header == ", (map { sprintf (" %08x", $_) } unpack ("V6", substr ($dat, 0, 24))), "\n";
    
    my $ptr = $hdr_subtable_starts;
    my ($n_subimgs, $zero1, $xres, $yres) = unpack ("VVvv", substr ($dat, $ptr, 12));
    my @subimg_table = ();
    $ptr += 12;
    for (my $j = 0; $j < $n_subimgs; ++ $j) {
        my $line_dwords = unpack ("V", substr ($dat, $ptr, 4));
        die "line_dwords[$j] == $line_dwords, not 7" if $line_dwords != 7;
        #push @subimg_table, [ unpack ("V*", substr ($dat, $ptr+4, 4*($line_dwords-1))) ];
        push @subimg_table, [unpack ("VvvvvvvvvV", substr ($dat, $ptr+4, 24))];
        $ptr += 4*$line_dwords;
    }
    die "header length mismatch : $hdr_length vs $ptr" if $hdr_length != $ptr;
    die "file start mismatch $files_start2 vs $files_start3" if $files_start2 != $files_start3;

    my $subhead_str = substr ($dat, $files_start2, 8);
    die "subhead_str($files_start2) is '$subhead_str', not 'EMUARC__'" if ($subhead_str ne 'EMUARC__');
    my $ptr = $files_start2 + 8;

    for (my $i = 0; $i < @{$subimg_table[0]}; ++ $i) {
        print "subimg[0][$i] -> ", $subimg_table[0][$i], ".\n";
    }
    my $real_xres = $subimg_table[0][7];
    my $real_yres = $subimg_table[0][8];

    my $big_img = "xyzzy";
    if ($make_images) {
        $big_img = Imager->new (xsize => $real_xres, ysize => $real_yres, channels => 4);
        print "Built \$big_img to $big_img; ($real_xres, $real_yres).\n";
    } else {
        print "Not setting \$big_img; \$make_images == $make_images.\n";
    }

    for (my $j = 0; $j < $n_subimgs; ++ $j) {
        #$_ = $subimg_table[$j];

        my @table_data = @{$subimg_table[$j]};
        my ($sub_unk1, $sub_xoff, $sub_yoff, $sub_xres, $sub_yres,
            $sub_fullxres, $sub_fullyres, $sub_halfxres, $sub_halfyres, $sub_offset) = @{$subimg_table[$j]};
        #print "  $j: @table_data\n";

        #print "sub_unks: $sub_unk1 ; offset $sub_xoff $sub_yoff; res = $sub_xres $sub_yres $sub_fullxres $sub_fullyres $sub_halfxres $sub_halfyres; offset = $sub_offset\n";

        #print "  $j: ", (map { sprintf (" %x", $_) } unpack ("V*", substr ($dat, $ptr + $_->[-1], 124))), ".\n";
        #next;

        my @subimg_data = unpack ("A8V2v6A64V8", substr ($dat, $ptr + $sub_offset, 124));
        $subimg_data[9] =~ s/\0*$//;
        #print "  $j: @subimg_data.\n";

        my ($sub_type, $sub_xres, $sub_yres, $full_xres, $half_xres, $full_yres, $half_yres, 
            $c_length, $unk1, $sub_name, $u_length, $zero2, $unk2, $zero3, $zero4, $zero5,
            $sub_xres2, $sub_yres2) = @subimg_data;
            #unpack ("A8V2v6A64V8", substr ($dat, $ptr + $_->[-1], 124));
        printf ("RES: %4d %4d   full %4d %4d   half %4d %4d   full2 %4d %4d  half2 %4d %4d\n",
            $xres, $yres, $sub_fullxres, $sub_fullyres, $sub_halfxres, $sub_halfyres,
            $full_xres, $full_yres, $half_xres, $half_yres);


        print "Not a .png\n" if $sub_type != 'PNGFILE2';
        print "subxres mismatch\n" if ($sub_xres != $sub_xres2);
        print "subyres mismatch\n" if ($sub_yres != $sub_yres2);
        #print "xres mismatch: $full_xres != 2*$half_xres\n" if ($full_xres != 2*$half_xres);
        #print "yres mismatch: $full_yres != 2*$half_yres\n" if ($full_yres != 2*$half_yres);
        print "Area mismatch\n" if (4 * $sub_xres * $sub_yres != $u_length);
        print "not all zeros: $zero2 $zero3 $zero4 $zero5\n" if ($zero2 != 0 || $zero3 != 0 || $zero4 != 0 || $zero5 != 0);
        #print "    $j//$n_subimgs:  $sub_xoff $sub_yoff  $sub_xres $sub_yres  $unk1 $unk2\n";
        printf ("   %2d//%2d:   %4d,%4d   %4d,%4d   %d,%d\n",
            $j, $n_subimgs, $sub_xoff, $sub_yoff, $sub_xres, $sub_yres, $unk1, $unk2);
        if ($make_images) {
            my $png_data = substr ($dat, $ptr + $sub_offset + 124, $u_length);
            #print "png_data = $png_data\n";
            #my $small_img = Imager->new (data => \$png_data, filetype => 'png');
            my $small_img = Imager->new;
            #$small_img->read (data => \$png_data, filetype => 'png');
            #my $cb = make_cb (\$png_data);
            #print "\$cb == $cb\n";
            #$small_img->read (callback => $cb);
            my $OFH;
            open $OFH, ">/tmp/png.png";
            print $OFH $png_data;
            close $OFH;
            my $small_img = Imager->new ( file => '/tmp/png.png' );
            #my $small_img = Imager->new (data => \$png_data, filetype => 'png');
            my $c2 = Imager::Color->new(0,0,0,0);
            for (my $xx = 0; $xx < $sub_xres; ++ $xx) {
                for (my $yy = 0; $yy < $sub_yres; ++ $yy) {
                    #printf ("%4d %4d %2x %2x %2x %2x.\n", $xx, $yy, $small_img->getpixel (x => $xx, 'y' => $yy)->rgba());
                    my @color = $small_img->getpixel (x => $xx, 'y'=>$yy)->rgba();
                    #printf ("%04d %04d \@color = @color\n", $xx, $yy);
                    #my $c2 = Imager::Color->new($color[2], $color[1], $color[0], $color[3]);
                    #my $c2 = Imager::Color->new($color[2], $color[1], $color[0], 0xff);
                    $c2->set($color[2], $color[1], $color[0], 0xff);
                    #print "\$c2->rgba() == ", join (" ", $c2->rgba()), ".\n";
                    #print "\$big_img == $big_img.\n";
                    $big_img->setpixel (x=>$xx + $sub_xoff, 'y'=>$yy + $sub_yoff, color=>$c2);
                }
            }
            #$big_img->write (file => '/tmp/file.png');
            #$j = $n_subimgs;
            #$small_img->write (file => '/tmp/file2.png');
        }
        #print "\n";
    }
    if ($make_images) {
        #$big_img->write (file => '/tmp/file.png');

        my $infil = $_[0];
        $infil =~ s/bip$/x.png/i;
        $big_img->write (file => $infil);
    }
}	
    



my @copy_argv = @ARGV;
foreach (@copy_argv) {
    #eval { handle_multipng ($_); }
    handle_multipng ($_);
}
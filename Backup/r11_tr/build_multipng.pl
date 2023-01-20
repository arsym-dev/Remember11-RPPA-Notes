#!/usr/bin/perl
use strict;
use unbip;
use Imager;

# Used for bg/... files

sub handle_multipng {
    undef $/;
    print "Building multipng $_[0] -> $_[1]\n";
    @ARGV = ($_[1]);
    my $dat_old = do_uncompress (<>, 0);

    my $make_images = 1;
    
    my ($hdr_5, $hdr_subtable_starts, $hdr_length, $files_start2, $files_start3, $file_length) = unpack ("V6", substr ($dat_old, 0, 24));
    die "dword0==$hdr_5, not 5" if $hdr_5 != 5;
    die "dword5==$file_length, not file length (=".length($dat_old).")" if $file_length != length ($dat_old);
    print "Header == ", (map { sprintf (" %08x", $_) } unpack ("V6", substr ($dat_old, 0, 24))), "\n";
    
    my $ptr = $hdr_subtable_starts;
    my ($n_subimgs, $zero1, $xres, $yres) = unpack ("VVvv", substr ($dat_old, $ptr, 12));
    my @subimg_table = ();
    $ptr += 12;
    for (my $j = 0; $j < $n_subimgs; ++ $j) {
	my $line_dwords = unpack ("V", substr ($dat_old, $ptr, 4));
	die "line_dwords[$j] == $line_dwords, not 7" if $line_dwords != 7;
	push @subimg_table, [unpack ("VvvvvvvvvV", substr ($dat_old, $ptr+4, 24))];
	$ptr += 4*$line_dwords;
    }
    die "header length mismatch : $hdr_length vs $ptr" if $hdr_length != $ptr;
    die "file start mismatch $files_start2 vs $files_start3" if $files_start2 != $files_start3;

    my $subhead_str = substr ($dat_old, $files_start2, 8);
    die "subhead_str($files_start2) is '$subhead_str', not 'EMUARC__'" if ($subhead_str ne 'EMUARC__');
    my $ptr = $files_start2 + 8;

    #for (my $i = 0; $i < @{$subimg_table[0]}; ++ $i) {
    #	print "subimg[0][$i] -> ", $subimg_table[0][$i], ".\n";
    #}
    my $real_xres = $subimg_table[0][7];
    my $real_yres = $subimg_table[0][8];

    my $big_img = Imager->new (file => $_[0]);
    print "\$big_img = $big_img.\n";
    #if ($make_images) {
    #	$big_img = Imager->new (xsize => $real_xres, ysize => $real_yres, channels => 4);
    #	print "Built \$big_img to $big_img; ($real_xres, $real_yres).\n";
    #} else {
    #	print "Not setting \$big_img; \$make_images == $make_images.\n";
    #}
    
    # data from 
    my @lst1 = unpack ("V*", substr ($dat_old, 0, $files_start2 + 8));
    print "scalar \@lst1 == ", scalar @lst1, ".\n";
    
    #my @subimg_pngs  = ();
    my @subimg_bytes = ();

    my $out_ptr = 0;
    for (my $j = 0; $j < $n_subimgs; ++ $j) {
	my @table_data = @{$subimg_table[$j]};
	my ($sub_unk1, $sub_xoff, $sub_yoff, $sub_xres, $sub_yres,
	    $sub_fullxres, $sub_fullyres, $sub_halfxres, $sub_halfyres,
	    $sub_offset) = @{$subimg_table[$j]};

	my @subimg_data = unpack ("A8V2v4VA64V8", substr ($dat_old, $ptr + $sub_offset, 124));
	#$subimg_data[9] =~ s/\0*$//;

	my ($sub_type, $sub_xres, $sub_yres, $full_xres, $half_xres, 
	    $full_yres, $half_yres, $c_length, $sub_name, $u_length, 
	    $zero2, $unk2, $zero3, $zero4, $zero5,
	    $sub_xres2, $sub_yres2)
	    = @subimg_data;
	printf ("RES: %4d %4d   full %4d %4d   half %4d %4d   full2 %4d %4d  half2 %4d %4d\n",
		$xres, $yres, $sub_fullxres, $sub_fullyres, $sub_halfxres, 
		$sub_halfyres, $full_xres, $full_yres, $half_xres, $half_yres);

	print "Not a .png\n" if $sub_type != 'PNGFILE2';
	print "subxres mismatch\n" if ($sub_xres != $sub_xres2);
	print "subyres mismatch\n" if ($sub_yres != $sub_yres2);

	print "Area mismatch\n" if (4 * $sub_xres * $sub_yres != $u_length);
	print "not all zeros: $zero2 $zero3 $zero4 $zero5\n" if ($zero2 != 0 || $zero3 != 0 || $zero4 != 0 || $zero5 != 0);
	printf ("   %2d//%2d:   %4d,%4d   %4d,%4d   %d\n",
		$j, $n_subimgs, $sub_xoff, $sub_yoff, $sub_xres, 
		$sub_yres, $unk2);

	my $small_img = Imager->new (xsize => $sub_xres, ysize => $sub_yres, channels => 4);
	my $c2 = Imager::Color->new(0,0,0,0);
	my @trans = ();
	
	if (0) {
	    for (my $xx = 0; $xx < $sub_xres; ++ $xx) {
		for (my $yy = 0; $yy < $sub_yres; ++ $yy) {
		    my @color = $big_img->getpixel (x => $xx + $sub_xoff, 'y', $yy + $sub_yoff)->rgba();
		    my $trans;
		    if ($big_img->getchannels() < 4) {
			$trans = 0x80;
		    } elsif ($color[3] == 0xff) {
			$trans = 0x80;
		    } else {
			$trans = $color[3] / 2;
		    }
		    #$c2->set ($color[2], $color[1], $color[0], ($color[3] == 0xff ? 0x80 : $color[3] / 2));
		    $c2->set ($color[2], $color[1], $color[0], $trans);
		    #printf ("%02x ", $color[3]);
		    #push @trans, $color[3];
		    #printf ("[%d:%02x:%02x:%02x:%02x] ", scalar @color, @color);
		    $small_img->setpixel (x => $xx, 'y'=>$yy, color=>$c2);
		}
	    }
	}
	if (1) {
	    my $nchan = $big_img->getchannels();
	    my $tmp;
	    for (my $yy = 0; $yy < $sub_yres; ++ $yy) {
		my @color = unpack ("C*", $big_img->getscanline (x=> $sub_xoff, 'y' => $sub_yoff + $yy, width=>$sub_xres));
		#print "After cgetscanline, scalar \@color == ", scalar @color, ".\n";
		for (my $xx = 0; $xx < 4*$sub_xres; $xx += 4) {
		    $tmp = $color[$xx];
		    $color[$xx] = $color[$xx+2];
		    $color[$xx+2] = $tmp;
		    $tmp = $color[$xx+3];
		    if ($nchan < 4 || $tmp == 0xff) {
			$tmp = 0x80;
		    } else {
			$tmp = $tmp / 2;
		    }
		    $color[$xx+3] = $tmp;
		    push @trans, $tmp;
		}
		#print "About to call setscanline w/ scalar \@color == ", scalar @color, ".\n";
		$small_img->setscanline (x=> 0, 'y'=>$yy, width => $sub_xres, pixels => pack ("C*", @color));
		#print "CALLED!\n";
	    }
	}
	if (1 && @trans > 0) {
	    print "Transparency: ";
	    my $cur_trans = $trans[0];
	    my $cur_starts = 0;
	    my $i;
	    for ($i = 1; $i < @trans; ++ $i) {
		if ($cur_trans != $trans[$i]) {
		    printf ("%02x*%d ", $cur_trans, $i - $cur_starts);
		    $cur_trans = $trans[$i];
		    $cur_starts = $i;
		}
	    }
	    printf ("%02x*%d\n", $cur_trans, $i - $cur_starts);
	}
		    


	my $png_dat;
	$small_img->write (data => \$png_dat, type => 'png');

	#my $excess = length ($png_dat) % 16;
	#if ($excess != 0) {
	#    $png_dat .= "\0"x(16 - $excess);
	#}
	$png_dat = pack ("A8V2v4VZ64V8", 'PNGFILE2', $sub_xres, $sub_yres, 
			 $full_xres, $half_xres, $full_yres, $half_yres,
			 124 + length($png_dat), $sub_name, $u_length, 0, $unk2,
			 0,0,0, $sub_xres2, $sub_yres2) . $png_dat;
	push @subimg_bytes, $png_dat;
	$lst1[$hdr_subtable_starts / 4 + 3 + 7*$j + 6] = $out_ptr;
	$out_ptr += length($png_dat);
    }
    #if ($make_images) {
    #	my $infil = $_[0];
    #	$infil =~ s/bip$/x.png/i;
    #	$big_img->write (file => $infil);
    #}
    print "Generated ", scalar @subimg_bytes, " images.\n";

    my $OFH;
    open $OFH, ">", $_[2] or die "Unable to open $_[2] for output: $!";
    
    $lst1[5] = (4 * scalar @lst1) + $out_ptr;
    print "scalar \@lst1 == " , scalar @lst1, "; \$out_ptr = $out_ptr, \$lst1[5] == $lst1[5].\n";
    print $OFH pack ("V*", @lst1);
    foreach (@subimg_bytes) {
	print $OFH $_;
    }
    close $OFH;
}	

#my @copy_argv = @ARGV;
#foreach my $f (@copy_argv) {
#    my $rv = 0;
#    undef $@;
#    $| = 1;
#    eval { $rv = handle_multipng ($f); };
#    print "$f: $@     \n" if $rv == 0;
#    #handle_multipng ($_);
#}


#handle_multipng ('in_bg_en/cal_a01.x.png', 'bg/cal_a01.bip', 'bg_en/cal_a01.bip');
#handle_multipng ('bg/cal_a01.x.png', 'bg/cal_a01.bip', 'bg_en/cal_a01.bip');


#if (1) {
sub search_dir {
    my $DIR;
    #my $dir_name= 'in_bg_en/';
    #my $dir_name = $_[0];
    my ($bip_dir, $out_dir, $in_dir) = @_;
    #opendir ($DIR, $dir_name);
    opendir ($DIR, $in_dir);
    my $base;
    while ($base = readdir ($DIR)) {
	#my $full = $dir_name . $base;
	my $full = $in_dir . $base;
	if (-f $full) {
	    print "  $full;\n";
	    my $bip_name = $base;
	    $bip_name =~ s/\.x\.png/\.bip/;
	    if (! -f $bip_dir . $bip_name) {
		print "   **** ${bip_dir}${bip_name};\n";
	    } else {
		#handle_multipng ($full, "bg/$bip_name", "bg_en/$bip_name");
		handle_multipng ($full, $bip_dir.$bip_name, $out_dir.$bip_name);
	    }
	}
    }
    closedir ($DIR);
}

#search_dir ('bg/', 'bg_en/', 'in_bg_en/');
search_dir ('ev/', 'ev_en/', 'in_ev_en/');

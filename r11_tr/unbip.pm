#!/usr/bin/perl
use strict;

my $uncompressed_string;

sub do_uncompress {
    #print "\n\nunbip.pm:do_uncompress\n";
    my $verbose = (scalar @_ > 1) ? $_[1] : 1;
    my $in_size = length ($_[0]);
    my @in = unpack ("C*", $_[0]);
    my $out_size = unpack ("V", substr ($_[0], 0, 4)) + 18;
    my @out = (0)x18;
    my $i = 4;
    my $o = 0;
    my $mask = 0;
    my $j;
    
    #print "\$uncompressed_string = $uncompressed_string.\n";

    while ($i < $in_size) {
	$mask >>= 1;
	if ($mask < 0x100) {
	    $mask = $in[$i ++] | 0x8000;
	}
	if ($mask & 1) { # Literal
	    if ($o + 18 > $out_size) {
		return ("overrun", 0);
	    }
	    if (defined $uncompressed_string) {
		#printf ("%7x:%7x COPY %02x %s\n", $i, $o+18, $in[$i], (!$uncompressed_string || $in[$i] == ord (substr ($uncompressed_string, $o + 18, 1)) ? "": "ERR"));
	    }
	    $out[($o++) + 18] = $in[$i++];
	} else { # Run
	    my $off = (($in[$i+1] >> 4)<<8) + $in[$i] + 18;
	    my $len = ($in[$i+1] & 0xf) + 3;
	    my $m = ($o & ~0xfff) | ($off & 0xfff);
	    my $was_backed = 0;
	    my $had_err = 0;
	    if ($m >= $o) { $m -= 0x1000; $was_backed = 1; }
	    if (defined $uncompressed_string) {
		#printf ("%7x:%7x [%02x %02x] BACKCOPY off=%x len=%x m=%x %s (", $i, $o+18, $in[$i], $in[$i+1], $off, $len, $m, $was_backed ? '<-':'');
	    }
	    if ($m < -18) {
		printf ("Invalid match %d len %d at %x//%x\n", $m, $len, $i, $o);
	    }
	    if ($o + $len > $out_size) {
		return ("overrun", 0);
	    }
	    $i += 2;
	    for ($j = 0; $j < $len; ++ $j) {
		if (defined $uncompressed_string) {
		    #printf ("%02x ", $out[$m + 18]);
		    if (defined $uncompressed_string && $out[$m + 18] != ord (substr ($uncompressed_string, $o+18, 1))) { $had_err = 1; }
		}
		$out[($o++)+18] = $out[($m++)+18];
	    }
	    if (defined $uncompressed_string) {
		#printf (") %s\n", $had_err ? 'ERR' : '');
	    }
	}
    }
    if ($o > $out_size) {
	return ("underrun\n", 0);
    }
    return (pack ("C*", @out[18..$#out]), 1);
}

sub do_uncompress_old {
    print "\n\nunbip.pm:do_uncompress\n";
    my $verbose = (scalar @_ > 1 ? $_[1] : 1);

    my @in = unpack ("C*", $_[0]);
    my @in_1 = @in[0..20];
    #print "do_uncompress (@in_1 ...).\n";
    my $in_len = length ($_[0]);
    my $out_len = unpack ("V", substr ($_[0], 0, 4)) + 18;
    #if ($out_len > 4*1024*1024) {
    if ($out_len > 9 * $in_len) {
	if ($verbose) {
	    print STDERR "Output is too long to be produced by input.\n";
	}
	return ($_[0], 0);
    }
    #print "\$out_len == $out_len.\n";
    my @out = (0)x($out_len);
    my $mask = 0;
    my $in = 4;
    my $out = 18;

    #print "in_len == $in_len, out_len == $out_len\n";

    while ($in < $in_len) {
	$mask >>= 1;
	if ($mask < 0x100) {
	    $mask = $in[$in++] | 0x8000;
	}
	if ($mask & 1) {
	    #printf ("%7x:%7x COPY %02x %s\n", $in, $out, $in[$in], $in[$in] == ord (substr ($uncompressed_string, $out, 1)) ? "": "ERR");
	    #print "Singleton\n";
	    if ($out >= $out_len) { 
		if ($verbose) { print STDERR "singleton overrun $out vs $out_len\n"; }
		return ($_[0], 0);
	    }
	    $out[$out++] = $in[$in++];
	    #printf ("%02x ", $out[$out-1]);
	} else {
	    my $off = (($in[$in + 1] >> 4)<< 8) + $in[$in] + 18;
	    my $len = ($in[$in+1] & 0xf) + 3;
	    my $was_bad = 0;
	    my $m = (($out-18) & (~0xfff)) | ($off & 0xfff) + 18;
	    my $was_backed = 0;
	    #my $m = ($out & (~0xfff)) | ($off & 0xfff);
	    #printf STDERR ("block match %d len %d at %x / %x\n", $m-18, $len, $in, $out-18);
	    #printf ("back match %02x:%02x  -> off=%x,len=%x,m=%x\n",
	    #	    $in[$in], $in[$in+1], $off, $len, $m);
	    if ($m >= $out) { $m -= 0x1000; $was_backed = 1; }
	    if ($m < 0 && $verbose) { printf STDERR ("*** invalid match %d len %d at %x / %x\n", $m-18, $len, $in, $out-18); }
	    if ($out + $len > $out_len) {
		if ($verbose) { print STDERR "block overrun $out + $len vs $out_len\n"; }
		return ($_[0], 0);
	    }
	    #printf ("%7x:%7x [%02x %02x] BACKCOPY off=%x, len=%d, m=%x %s (", $in, $out, $in[$in], $in[$in+1], $off, $len, $m, $was_backed ? '<-':'');
	    $in += 2;
	    for (my $j = 0; $j < $len; ++ $j) {
		#printf ("%02x ", $out[$m]);
		#if (ord (substr ($uncompressed_string, $out, 1)) != $out[$m]) { $was_bad = 1; }
		$out[$out++] = $out[$m++];
	    }
	    #printf (") %s\n", $was_bad ? 'ERR' : '');
	}
    }
    #print "Output size is $out_len : $#out.\n";
    if ($out != $out_len) {
	if ($verbose) { print STDERR "final underrun : out == $out vs. $out_len\n"; }
	return ($_[0], 0);
    }
    return (pack ("c*", @out[18..$#out]), 1);
}

# Don't actually compress, just use singleton markers
# Should always work
sub do_compress_non {
    my $dat = $_[0];
    my $in_size = length ($dat);
    #my $out_size = int (($in_size * 9 + 7)/8) + 4;
    my $rv = pack ("V", $in_size);
    for (my $i = 0; $i < $in_size; ++ $i) {
	if (($i & 0x7) == 0) { 
	    $rv .= chr(0xff);
	}
	$rv .= substr ($dat, $i, 1);
    }
    return $rv;
}

my $LONGEST_BACKSEARCH = 0x1000 - 20;
# Helper function for do_compress_slow
sub find_best_match {
    my ($i, $r_str) = @_;
    my $full_len = length ($$r_str);
    my $this_index;
    if ($i > $LONGEST_BACKSEARCH) {
	$this_index = $i - $LONGEST_BACKSEARCH;
    } else {
	$this_index = 0;
    }
    my $longest_match = 0;
    my $best_index = -1;
    my $best_len = 3;
    my $best_match_str = substr ($$r_str, $i, 3);
    while ($this_index < $i) {
	if (substr ($$r_str, $this_index, $best_len) eq $best_match_str) {
	    my $this_len = $best_len;
	    
	    while ($i + $this_len < $full_len &&
		   #$this_len < 19 &&
		   substr ($$r_str, $this_index, $this_len) eq substr ($$r_str, $i, $this_len)) {
		if ($this_len == 18) { return ($this_index, $this_len); }
		++ $this_len;
	    }
	    -- $this_len;
	    if ($this_len > $best_len) {
		$best_len = $this_len;
		$best_index = $this_index;
		$best_match_str = substr ($$r_str, $i, $this_len);
	    }
	}
	++ $this_index;
    }
    return ($best_index, $best_len);
}

# Try to actually compress the data.  Slow.  While it's always worked 
# correctly when I tried it, there may be a bug that causes incorrect behavior.
sub do_compress_slow {
    my @rv = (pack ("V", length ($_[0])));
    my $u_str = ("\0"x18).(shift @_);
    my $mask_bit = 1;
    my $mask = 0;
    my $pending = '';
    
    my $i = 18;
    while ($i < length ($u_str)) {
	#printf ("\$i == %d // %d, \$mask == %02x, \$mask_bit == %02x\n",
	#	$i, length ($u_str), $mask, $mask_bit);
	my ($back_index, $back_len) = find_best_match ($i, \$u_str);
	if ($back_index == -1) {
	    $pending .= substr ($u_str, $i, 1);
	    $i ++;
	    $mask |= $mask_bit;
	    $mask_bit <<= 1;
	} else {
	    my $off = ($back_index-36) & 0xfff;
	    #printf ("back_index = %x, back_len = %d, \$off = %03x\n", $back_index, $back_len, $off);
	    $pending .= chr (($off & 0xff)) .
	     	chr ( (($off & 0xf00) >> 4) | (($back_len - 3)));
	    $mask_bit <<= 1;
	    $i += $back_len;
	}
	if ($mask_bit == 0x100) {
	    push @rv, chr($mask).$pending;
	    $pending = '';
	    $mask_bit = 1;
	    $mask = 0;
	}
    }
    if ($pending ne '') {
	push @rv, chr($mask).$pending;
    }
    my $rv = join ('', @rv);
    #print "len (\$rv) == ", length ($rv), ".\n";
    return $rv;
    #return $u_str;
}

# Helper function for do_compress_fast
sub find_best_match_fast {
    my ($i, $r_str, $cache) = @_;
    my $full_len = length ($$r_str);
    #my $this_index;
    #if ($i > $LONGEST_BACKSEARCH) {
    #	$this_index = $i - $LONGEST_BACKSEARCH;
    #} else {
    #	$this_index = 0;
    #}
    my $longest_match = 0;
    my $best_index = -1;
    my $best_len = 3;
    if (!defined $cache->{(substr ($$r_str, $i, 3))}) { 
	return (-1, 0);
    }
    my @indecies = @{$cache->{(substr ($$r_str, $i, 3))}};
    my $best_match_str = substr ($$r_str, $i, 3);
    foreach my $this_index (@indecies) {
	next if $i - $this_index > $LONGEST_BACKSEARCH;
	my $this_len = $best_len;
	
	while ($i + $this_len < $full_len &&
	       #$this_len < 19 &&
	       substr ($$r_str, $this_index, $this_len) eq substr ($$r_str, $i, $this_len)) {
	    if ($this_len == 18) {
		return ($this_index, 18);
	    }
	    ++ $this_len;
	}
	-- $this_len;
	if ($this_len > $best_len) {
	    $best_len = $this_len;
	    $best_index = $this_index;
	    $best_match_str = substr ($$r_str, $i, $this_len);
	}
    }
    return ($best_index, $best_len);
}

sub do_compress_fast {
    my @rv = (pack ("V", length ($_[0])));
    my $u_str = ("\0"x18).(shift @_);
    $uncompressed_string = $u_str;
    my $mask_bit = 1;
    my $mask = 0;
    my $pending = '';
    my %cache = ();
    my $k;
    my $out_bytes = 5; # Length + first mask byte
    
    my $i = 18;
    for (my $j = 0; $j < 18; ++ $j) {
	push @{$cache{(substr ($u_str, $j, 3))}}, $j;
    }
    while ($i < length ($u_str)) {
	my ($back_index, $back_len) = find_best_match_fast ($i, \$u_str, \%cache);
	if ($back_index == -1) {
	    $pending .= substr ($u_str, $i, 1);
	    #printf ("%7x:%7x copy %02x\n", $out_bytes, $i, ord (substr ($u_str, $i, 1)));
	    ++ $out_bytes;
	    push @{$cache{(substr ($u_str, $i, 3))}}, $i;
	    if ($i >= 0x1000) {
		shift @{$cache{(substr ($u_str, $i-0x1000, 3))}};
		#$k = shift @{$cache{(substr ($u_str, $i-0x1000, 3))}};
		#print "At \$i-0x1000 = ", $i-0x1000, ", shifted off $k\n";
	    }
	    $i ++;
	    $mask |= $mask_bit;
	    $mask_bit <<= 1;
	} else {
	    my $off = ($back_index-36) & 0xfff;
	    $pending .= chr (($off & 0xff)) .
	     	chr ( (($off & 0xf00) >> 4) | (($back_len - 3)));
	    #printf ("%7x:%7x [%02x %02x] backcopy index=%x, len=%d (", $out_bytes, $i, ($off & 0xff), ((($off & 0xf00) >> 4) | (($back_len - 3))), $back_index, $back_len);
	    $out_bytes += 2;
	    $mask_bit <<= 1;
	    for (my $j = 0; $j < $back_len; ++ $j) {
		push @{$cache{(substr($u_str, $i + $j, 3))}}, $i + $j;
		#printf ("%02x ", ord (substr ($u_str, $i + $j, 3)));
		if ($i + $j >= 0x1000) {
		    shift @{$cache{(substr($u_str, $i + $j - 0x1000, 3))}};
		    #$k = shift @{$cache{(substr($u_str, $i + $j - 0x1000, 3))}};
		    #print "At \$i+\$j-0x1000 = ", $i + $j - 0x1000, " shifted off $k.\n";
		}
	    }
	    #printf (")\n");
	    $i += $back_len;
	}
	if ($mask_bit == 0x100) {
	    push @rv, chr($mask).$pending;
	    $out_bytes += 1; # mask bytes
	    $pending = '';
	    $mask_bit = 1;
	    $mask = 0;
	}
    }
    if ($pending ne '') {
	push @rv, chr($mask).$pending;
    }
    my $rv = join ('', @rv);
    #print "len (\$rv) == ", length ($rv), ".\n";
    return $rv;
    #return $u_str;
}

sub do_compress { return do_compress_fast (@_); }
sub do_compress_safe {
    my $str = shift;
    my ($tmp, $tmp2, $good);
    $tmp = do_compress_fast ($str);
    ($tmp2, $good) = do_uncompress ($tmp);
    if ($str eq $tmp2) {
    	return $tmp;
    }
    $tmp = do_compress_non ($str);
    ($tmp2, $good) = do_uncompress ($tmp);
    #if ($str eq do_uncompress ($tmp)) {
    if ($str eq $tmp2) {
	return $tmp;
    }
    die "Failure to compress string.";
}

#undef $/;
#my $dat = <>;
#print do_uncompress ($dat);

1;

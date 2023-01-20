#!/usr/bin/perl

use lib '.';
use strict;
use unbip;
use Encode qw/encode decode/;

sub xx_do_uncompress {
    my @in = unpack ("C*", $_[0]);
    my @in_1 = @in[0..20];
    #print "do_uncompress (@in_1 ...).\n";
    my $in_len = length ($_[0]);
    my $out_len = unpack ("V", substr ($_[0], 0, 4));
    my @out = (0)x($out_len);
    my $mask = 0;
    my $in = 4;
    my $out = 0;

    #print "in_len == $in_len, out_len == $out_len\n";

    while ($in < $in_len) {
		$mask >>= 1;
		if ($mask < 0x100) {
			$mask = $in[$in++] | 0xFF00;
		}
		if ($mask & 1) {
			if ($out >= $out_len) { die "singleton overrun $out vs $out_len"; }
			$out[$out++] = $in[$in++];
			#printf ("%02x ", $out[$out-1]);
		} else {
			my $off = (($in[$in + 1] >> 4)<< 8) + $in[$in];
			my $len = ($in[$in+1] & 0xf) + 3;
			my $m = (($out) & (~0xfff)) | ($off & 0xfff);
			if ($m >= $out) { $m -= 0x1000; }
			if ($m < 0) { printf STDERR ("*** invalid match %d len %d at %x / %x\n", $m, $len, $in, $out); }
			if ($out + $len > $out_len) { die "block overrun $out + $len vs $out_len"; }
			$in += 2;
			for (my $j = 0; $j < $len; ++ $j) {
			$out[$out++] = $out[$m++];
			#printf ("%02x ", $out[$out-1]);
			}
		}
    }
    #print "Output size is $out_len : $#out.\n";
    if ($out != $out_len) { die "final underrun : out == $out vs. $out_len\n"; }
    return pack ("c*", @out[0..$#out]);
}

undef $/;


my ($outfile);
my ($infile);
if (@ARGV != 2) {
    die "Usage: perl $0 (infile) (outfile)\n";
} elsif (@ARGV == 2) {
    $outfile = $ARGV[1];
    $infile = ($ARGV[0]);
} else {
    
}

my $dat = <>;
my $out = xx_do_uncompress ($dat);

print "Output to $outfile";

open OFH, ">", $outfile or die "$!";
binmode OFH;
print OFH $out;
close OFH;

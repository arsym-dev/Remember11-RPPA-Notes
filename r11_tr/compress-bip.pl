#!/usr/bin/perl

use strict;
use Encode qw/encode decode/;
use lib '.';
require 'unbip.pm';

my ($outfile);
if (@ARGV == 1) {
    $outfile = $ARGV[0];
    @ARGV = ();
} elsif (@ARGV == 2) {
    $outfile = $ARGV[1];
    @ARGV = ($ARGV[0]);
} else {
    die "Usage: perl $0 (infile) (outfile)\n";
}

undef $/;
binmode STDIN;
my $dat = <>;

my ($dat2) = do_compress_fast ($dat);
my ($unc2, $ok2) = do_uncompress ($dat2);

#print $dat2;


if (!$ok2) {
    print "Bad compression : $ok2 : $unc2\n";
} elsif ($unc2 ne $dat) {
    print "Bad compression ($ok2)\n";
    #$dat2 = do_compress_non ($dat);
} else {
    print "Compressed from ", length($dat), " to ", length($dat2), ".\n";
}

open OFH, ">", $outfile or die "$!";
binmode OFH;
print OFH $dat2;
close OFH;

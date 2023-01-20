#!/usr/bin/perl -w
use Encode;
undef $/;
while(<>) {
    $_ = decode("shift_jis", $_);
    for(split /%[OP]\n/, $_) {
        s/\n|%[KNOP]|%C....|%TS...|%TE//g;
        printf "%d $ARGV\n", length $_
    }
}

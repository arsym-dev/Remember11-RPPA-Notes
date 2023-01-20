#!/usr/bin/perl -ws
use Encode;
use File::Slurp;

# extract all the strings for the options menu
$exe = read_file($ARGV[0]);
for($i=0xbe488; $i<=0xbe838; $i+=16) {
    my $addr = unpack "V", substr($exe, $i, 4);
    substr($exe, $addr-0x400000, 1e4) =~ /^(.+?)\x00\x00/ or die;
    if(!$amin || $amin > $addr) { $amin = $addr }
    if(!$amax || $amax < $addr+$+[0]) { $amax = $addr+$+[0] }
    print "$1\n" if $x;
}
exit if $x;

# and reinsert the translations
$addr = $amin;
for($i=0xbe488; $i<=0xbe838; $i+=16) {
    defined(my $line = <STDIN>) or die "too few lines";
    $line = decode("utf8", $line, Encode::FB_CROAK);
    $line =~ s/\n$/\x00\x00/ or die;
    $line =~ s/ +/  /g;
    $line =~ s/-/\x{2015}/g;
    $line = encode("shift_jis", $line, Encode::FB_CROAK);
    substr($exe, $i, 4) = pack "V", $addr;
    substr($exe, $addr-0x400000, length($line)) = $line;
    $addr += length($line);
}
die "too many lines" if !eof;
die "buffer overflow" if $addr > $amax;
substr($exe, $addr-0x400000, $amax-$addr) = "\x00" x ($amax-$addr);
write_file($ARGV[0], $exe);

#!/usr/bin/perl -w
use File::Slurp;
($exe,@asm) = @ARGV;
$exe=~/\.exe/ and $asm[0]=~/\.asm/ or die "usage: $0 out.exe in.asm\n";
undef $/;
open $fexe, "+<", $exe or die;
foreach $asm (@asm) {
    ($o=$asm)=~s/\.asm/.o/;
    system("yasm", $asm, "-o", "$o") && die;
    read_file($asm) =~ /global_offset 0x4([0-9a-f]+)/i or die;
    sysseek $fexe, hex($1), 0;
    syswrite $fexe, read_file($o);
}

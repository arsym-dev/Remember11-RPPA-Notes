#!/usr/bin/perl -w
# reserve more space for rendered and decoded characters,
# since the original buffer isn't enough for a screenful of english.
use File::Slurp;
$exe = read_file($ARGV[0]);
open ASM, "-|", qw(objdump -d -w -M intel), $ARGV[0] or die;
while(<ASM>) {
    /^ +([0-9a-f]+):\t((?:[0-9a-f]{2} )+)\s*\t(\S.*)/ or next;
    my $off = hex($1);
    my $oplen = length($2)/3;
    my $op = $3;
    $op =~ s/, */, /g;
    next if $off > 0x41eb10 && $off < 0x41eb93; # false matches
    last if $off > 0x430000;
    if(# struct offset
       $op =~ /\+(0x[0-9a-f]{4})\]/ or
       $op =~ /add +esi, (0x59e4)/ or
       # this mul is always 0 in practice, but a static analysis says it should probably be modified too
       $op =~ /imul +\w{3}, \w{3}, (0x5c10)/)
    {
        my $v = hex($1);
        next if $v < 0x59e0 or $v > 0x6100;
        $off -= 0x400000; # difference between memory and file
        $off += $oplen - 4 - /\], 0x/; # position of the constant within the opcode
        $v == unpack("V", substr($exe,$off,4)) or die "imm mismatch $_";
        # rendered (offset 0x80): 52 bytes per char
        # plain text (offset 0x5c2c): 2 bytes per char
        # add 320 chars to each, for a total buffer size of 760 chars.
        # this is the most I can do; any more and it runs into other memory less easily moved.
        $v += ($op =~ /imul/ ? 2 : $v < 0x5d00 ? 52 : 54) * 320;
        substr($exe,$off,4) = pack "V", $v;
    }
}
write_file($ARGV[0], $exe);

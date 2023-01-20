#!/usr/bin/perl
$^W=1;
use Getopt::Long;

my $seek=0;
my $skip=0;
my $count;
my $inf;
my $outf;
my $new;
my $force=0;
GetOptions('seek=s'  => \$seek,
           'skip=s'  => \$skip,
           'count=s' => \$count,
           'if=s'    => \$inf,
           'of=s'    => \$outf,
           'new'     => \$new,
           'force'   => \$force,
           'f'       => \$force);

$force ||= ($inf =~ m#^/dev/#);

if(defined($inf)) {
    open(INF, "<", $inf)
        or die("can't open $inf: $!\n");
} else {
    open(INF, "<&", STDIN);
}

if(defined($outf)) {
    open(OUTF, "+<", $outf)
        or ($new and open(OUTF, ">", $outf))
        or die("can't open $outf: $!\n");
} else {
    open(OUTF, ">&", STDOUT);
}

sub numval {
    my $s = shift;
    return 0 if !defined($s);
    return 0+$s if $s =~ /^\d+$/;
    return hex $s if $s =~ /^0x[0-9a-f]+$/i;
    die "not an integer: $s\n";
}

$skip = numval($skip);
$seek = numval($seek);
$count = numval($count);
$maxcount = (-s INF) - $skip;
$count ||= $maxcount unless $force;
if(!$force && ($count < 0 || $count > $maxcount)) {die "bad count\n";}

sysseek(INF, $skip, 0);
sysseek(OUTF, $seek, 0);

my $blocksize = 2**16;
my $readtot = 0;
my $buf;
while(!defined($count) || $count>0) {
    my $bs = ($count && $count < $blocksize) ? $count : $blocksize;
    my $read = sysread(INF, $buf, $bs);
    syswrite(OUTF, $buf);
    $readtot += $read;
    if($read < $bs) {
        if($count) {
            print STDERR "read only $readtot\n";
        }
        last;
    }
    if($count) {
        $count -= $read;
    }
}

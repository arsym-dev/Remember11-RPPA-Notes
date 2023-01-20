#!/usr/bin/perl -w
use Encode;
use File::Slurp;

# extract all the strings from init.bin
$dat = read_file($ARGV[0]);
$dlen = length($dat);
for($i=0x165f8; $i<$dlen; $i++) {
    if(substr($dat,$i) =~ /^([^\x00]+)\x00/) {
        $strj{$i} = $1;
        $i += length($1);
    }
}
for($i=0; $i<0x58f8; $i+=4) {
    my $addr = unpack "V", substr($dat,$i,4);
    if($addr >= 0x165f8 && $addr < $dlen) {
        if(substr($dat,$addr-1,2) =~ /\x00[^\x00]/) {
            $addrj{$i} = $addr;
        } elsif(substr($dat,$addr-1,2) eq "\x00\x00") {
            $addrblank{$i} = $addr;
        } else {
            printf "$i $addr %d %d\n", ord(substr($dat,$addr-1,1)), ord(substr($dat,$addr,1));
        }
    }
}
if(join(" ", sort keys %strj) ne join(" ", sort values %addrj)) {
    die "strings don't match addresses\n";
}

for(sort {$a<=>$b} keys %strj) {
    $_ > 0x166a0 or next; # don't need to translate names, as I removed that dependency from the dialogue parser
    if(substr($dat,$_-2,2) eq "\x00\x00") { print "\n"; }
    $strj{$_} =~ s/\x87\x53/\x81\x40/g; # change "(20)" which R11 displays as space, to a real space
    my $line = $strj{$_};
    $line =~ /\W/ or next; # no need to translate these
    $line =~ s/\x87\x54$/I/; # bug in decode(), can't handle roman numerals
    $line =~ s/\x87\x55$/II/;
    $line = decode("shift_jis", $line, Encode::FB_CROAK);
    if(($_ >= 0x18379 && $_ <= 0x18cac) || ($_ >= 0x1d7b7 && $_ <= 0x1e447)) {
        # song titles which happen to already be in english
        $line =~ s/[\x{ff00}-\x{fffd}]/chr(ord($&)-0xfee0)/ge;
        $line =~ s/\x{3000}/ /g;
        $line =~ s/\x{30b5}\x{30c8}\x{30eb}\x{7de8}/Satoru Chapter/;
        next; # don't need to print these for translation, but FIXME keep them for the reinsertion
    }
    # assume the same line in different contexts always means the same thing, so only need to translate it once
    if($_ < 0x1eba6 && $dup{$line}) { next; }
    $dup{$line} = 1;
    print encode("utf8", "$line\n", Encode::FB_CROAK);
}

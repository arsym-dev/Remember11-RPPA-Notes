#!/usr/bin/perl -w
# extract from *.BIP in etc.afs, ignoring filenames and other metadata which I haven't REed.
use File::Slurp;
$i="00";
undef $/;
$_ = <>;
while(/\x89PNG.*?IEND..../sg) {
    write_file("out$i.png", $&);
    $i++;
}

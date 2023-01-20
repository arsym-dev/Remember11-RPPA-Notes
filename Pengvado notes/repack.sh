#!/bin/bash
mkdir -p ja/ en/
./repack_afs mac.orig.afs /dev/null /dev/null ja/ || exit 1
for i in www/*.txt ; do
    j=`basename $i .txt`
    echo "-- $j"
    ./decompressbip ja/$j{.BIP,.scn} || exit 1
    ./extract_en.pl $i > en/$j.txt || exit 1
    ./repack_scene ja/$j.scn en/$j{.txt,.scn} || exit 1
    ./compressbip en/$j{.scn,.BIP} || exit 1
done
./repack_afs mac.orig.afs mac.afs en/ || exit 1

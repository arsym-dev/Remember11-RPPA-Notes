#!/bin/bash
# extract all the japanese gametext.
# this script only had the be run once, it isn't part of the patcher.
mkdir -p ja/
./repack_afs mac.orig.afs /dev/null /dev/null ja/ || exit 1
for i in ja/*.BIP ; do
    j=`basename $i .BIP`
    ./decompressbip ja/$j{.BIP,.scn} || exit 1
    perl -pe 's/\0/\n/g' ja/$j.scn | grep -A9999 '%K%[NP]' | grep . > ja/$j.txt
done

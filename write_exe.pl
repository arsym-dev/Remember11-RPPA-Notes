#!/usr/bin/perl
use strict;
use Encode qw/encode decode/;
require "sjis.pl";
#@ARGV = ('R11.exe');
@ARGV = ('r11_tr/R11.exe');
undef $/;
my $dat = <>;

# List of places where start of init.bin is mentioned
my @lst = qw/195f 19ab 19bf 19f8 1a2a 1a5c 1a8e 1ac0 1af8 1b2a 1b5c 1b8e 1bc0 1bf8 1c2a 1c7d 1cfa 1d4d 7dc1 7dd2/;

my $file_len = length($dat);
my $old_init_size = unpack ("V", substr ($dat, 0x120, 4));
my $old_img_size = unpack ("V", substr ($dat, 0x150, 4));
print "old_init_size = $old_init_size, $old_img_size\n";
my $new_initbin_starts = $old_img_size;
my $new_initbin_len = 256000;
while ($new_initbin_len % 4096 != 0) { ++ $new_initbin_len; }
#my $new_init_data = $new_initbin_len + 0x3000;
#my $new_init_data = $new_initbin_len;
#my $new_init_data = 0;
#my $new_init_size = $old_init_size + $new_init_data;

my $new_uninit_data = $new_initbin_len;
my $new_uninit_size = $new_uninit_data;

my $data2_starts = $new_initbin_starts + $new_initbin_len;
my $data2_len = 0;

my %cvts = ();

#'????????????%N?????????????????%N??%N???',
#a09a0: '?????????????%N??????????????%N??%N???'
#       'Save current state.  Are you sure?%NYes%NNo\0",
#a09e8: '??%N????%N??%N????%N????'Copy Paste% N% N% N removed% N write back
#a0a18: '?????????????%N??1??????????%N??%N???'
#        Don't check system data again?%NYes%NNo\0
#9eca0: '???%N???%N???????%N???????%N?????%NTIPS%N????' Quick save save% N% N% N load quick load option% NTIPS%N% N Titles
#       "Quick save%NSave%NQuick Load%NLoad%NOption%NTIPS%NTitles%N\0"
#
#004a0794='??????   ') with 000d10ac='Choices  '
#         'Choices  '
#Replacing data at 000193e5 (originally 0049ed14='?????? ') with 000d1034='Total time'
#Replacing data at 0002fef4 (originally 004a07b8='???????? ') with 000d10c0='Messages '
#Replacing data at 0001996d (originally 0049edb4='???????:') with 000d1058='Total done'

sub xdump_str { 
    printf ("%s, len=%d: ", $_[0], length($_[1]));
    map { printf ("%02x ", $_); } unpack ("C*", $_[1]);
    print ".\n";
}

#sub hw_to_sjis_fw { return encode ("sjis", hw_to_fw ($_[0])); }
#my $str = "Choices";
#xdump_str ("orig", $str);
#xdump_str ("hw-to-fw", hw_to_fw ($str));
#xdump_str ("encode-sjis", hw_to_sjis_fw ($str));
#die;



my %lang_converts = (0x9ec68, "Return to title.  Are you sure?%NYes%NNo\0",
#		     0x9eca0, "Quick save%NSave%NQuick Load%NLoad%NOption%NTIPS%NTitles%N\0",
		     0x9eca0, "Save%NLoad%NQuick Save%NQuick Load%NOptions%NTIPS%NTitle\0",
		     0xa0950, "Discard data in edit.  Are you sure?%NYes%NNo\0",
		     0xa09a0, "Save current state.  Are you sure?%NYes%NNo\0",
		     0xa0a18, "Don't check system data again?%NYes%NNo\0",
		     #0xd10ac, "Choices  \0",
		     0xa0794, hw_to_fw ("Choices  "),
		     #0xa0794, "Choices",
		     #0xd10c0, "Messages \0",
		     0xa07b8, hw_to_fw ("Messages "),
		     #0xa07b8, "Messages",
		     #0x9ed14, hw_to_fw ("Total time"),
		     #0x9ed14, "Total time",
		     0x9ed14, hw_to_fw ("Total "),

		     #0x9ecf0, hw_to_fw ("Play time"),
		     #0x9ecf0, "Play time",
		     0x9ecf0, hw_to_fw ("Session "),

		     0x9edb0, hw_to_fw ("Total done"),
		     #0x9edb0, "Total done",
		     #0x1996d, "Total done\0",
		     #0x9ee34, "         BackJump",
		     0x9ee34, hw_to_fw ("        BackJump"),

		     #["\\H-TIPS list-", 0x30d33 ], #a08c4
		     #0xa08c4, hw_to_fw ("-TIPS list-"),
		     0xa08c4, hw_to_fw ("- TIPS -"),
    );

foreach (keys %lang_converts) {
    $cvts{$_} = $lang_converts{$_};
}

$cvts{(0x9dfc4)} = "init.rp\0";

foreach (@lst) {
    $cvts{(hex $_)} = pack ("V", $new_initbin_starts);
}

if (0) {
    my $x = $cvts{(0x298)};
    for (my $i = 0; $i < 40; ++ $i) {
	printf ("%02x ", ord (substr ($x, $i, 1)));
    }
    print ".\n";
}
my $lquote = chr (0x300e);
my $rquote = chr (0x300f);
my $title = "${lquote}Remember11 - the age of infinity-${rquote}";
my $YN = "%NYes%NNo";
my $CHECK = "%NCheck again?".$YN;
my $SPACE = "110KB or more free space is needed to save the data.";

# DAT2_ADDR - dat2_delta = FILE_ADDR
my $dat2_delta = $data2_starts - length($dat);
if (1) {
    # \\H : Change halfwidth characters to fullwidth
    # \\E : Use two-byte pseudoascii characters
    # \\16 : Return UTF-16
    foreach my $item (
	["Return to title. Are you sure?$YN", 0xb13d8 ], # 9ec68
	#["Play time", 0x1950c ], #9ecf0, series
	#["Total play time", 0x193e5 ], #9ed14, series
	#["Play time", 0x1950c,0,  0x19520,4,  0x1952b,8,  0x19537,12,  0x19542,16 ], #9ecf0 series
	#["Total time", 0x193e5,0, 0x193eb,8, 0x193f1,4, 0x19403,12, 0x19438,14], #9ed14 series
	#["Message completion (scene): ", 0x19736 ], #9ed50
	#["Message completion (total): ", 0x19979 ], #9edb0
	#["\\HScene completion:", 0x19736 ], #9ed50
	["\\HScenes done", 0x19736 ], #9ed50
	#["\\HTotal completion:", 0x1996d,4, 0x19979,0, 0x19973,8, 0x19983,16, 0x1998f,20, ], #9edb0 series
	#["\\HTotal done\0", 0x1996d,4, 0x19979,0, 0x19973,8, 0x19983,16, 0x1998f,20, 0x1999b,12,], #9edb0 series
	["Background---", 0x19d82 ], #9edc8
	#["         BackJump", 0x1f3c0 ], # 9ee34
	["Resume the game from here?$YN", 0xb1878 ], #9ee04
	#["Time", 0x2f721, 0x3024c ], #a0770
	["h", 0x2f721, 0, 0x3024c, 0 ], #a0770
	["m", 0x2f7a0, 0, 0x302cd, 0 ], #a076c
	#["Total play time", 0x2f6c8, 0x301ef ], #a0778
	#["Choice completion", 0x300b4 ], #a0794
	#["Message completion", 0x2fef4 ], # a07b8
	#["JukeBox completion", 0x2fd83 ], # a07cc
	#["Album completion",   0x2fc85 ], # a07e8
	#["TIPS completion", 0x2fb11 ], #a0804
	#["Scene title completion", 0x2fa22 ], #a0820
	#["Ending completion", 0x2f936 ], #a083c
	#["Total play time", 0x2f6c8, 0x301ef ], #a0778
	#["\\HChoices     ", 0x300b4 ], #a0794  # Done as series
	###["\\HABCDEFGHIJKL", 0x300b4 ], #a0794
	#["\\HMessages    ", 0x2fef4 ], # a07b8 # Done as series
	###["\\HMNOPQRSTUVWX", 0x2fef4 ], # a07b8
	#["\\HChoices  ", 0x300b4,0, 0x300bc,4, 0x300c5,8, 0x300ce,12, 0x300d8,16, 0x300e2,18 ], #a0794
	#["\\HMessages ", 0x2fef4,0, 0x2fefc,4, 0x2ff05,8, 0x2ff0e,12, 0x2ff18,16, 0x2ff22,18 ], # a07b8 
	["\\HJukeBox     ", 0x2fd83 ], # a07cc
	["\\HAlbum       ", 0x2fc85 ], # a07e8
	["\\HTIPS        ", 0x2fb11 ], #a0804
	["\\HScenes      ", 0x2fa22 ], #a0820
	["\\HEndings     ", 0x2f936 ], #a083c
	["\\HTotal time ", 0x2f6c8, 0, 0x301ef, 0, ], #a0778
	####["-Ending List-", 0x30894 ], #a0880
	["\\H-Endings-", 0x30894 ], #a0880
	####["-Scene title list-", 0x30a57 ], #a08a0
	["\\H-Scenes-", 0x30a57 ], #a08a0
	#["\\H-TIPS list-", 0x30d33 ], #a08c4
	["The data is corrupted", 0xbf5d8 ], #a0928
	## a0950
	## a09a0
	["Copy%NPaste%NDelete%NWrite%NReturn", 0x82a3f, 0, 0xbf5c8, 0, ], #a09e8
	["System data not found.$CHECK", 0xbf5c0 ], #a0a18
	["\\U${title}'s%Nsystem data is corrupted.$CHECK", 0xbf5bc ],# a0a60
	["Failed to rewrite.$CHECK", 0xbf5b4 ], #a0af8
	["Cannot open:%Ntoo many open files.$CHECK", 0xbf5b0], #a0b40
	["\\U${title}'s%Nfile is corrupted.$CHECK", 0xbf5ac, 0, 0xbf5c4, 0 ], #a0ba0
	["\\U${title}'s%Nfile not found.$CHECK", 0xbf5a4 ], #a0c30
	["$SPACE$CHECK", 0xbf5a0 ], #a0cb8
	[$CHECK, 0xbf594 ], #a0d44
	["Overwriting the save file.%NPlease wait.", 0xbf590 ], #a0d74
	["\\U${title}'s file is corrupted.%NOverwrite the file?$YN", 0xbf58c ], #a0da8
	["Failed to overwrite.%N", 0xbf584 ], #a0e40
	["Failed to create a new file.%N", 0xbf580 ], #a0e58
	["Failed to format.%N", 0xbf57c ], #a0e7c
	["Failed to save.%N", 0xbf574 ], #a0eb4
	["Could not get the time.%NIgnore and write?$YN", 0xbf570 ], # a0ed0
	["Not enough disk space.%N$SPACE%NCannot save.$CHECK", 0xbf56c ], #a0f20
	["\\U${title}'s%Nfile not found.%N$SPACE$CHECK", 0xbf568 ], # a0fc8
	["No disc.%N$SPACE$CHECK", 0xbf564 ], #a1090
	["Select save slot.", 0xbf560 ], #a110c
	["Loading complete.", 0xbf55c ], #a112c
	["Saving complete.", 0xbf558 ], #a1138
	["Load this file?%N(*All newer Quick Load files will be deleted)$YN", 0xbf554 ], #a1148
	#["Load this file?%N(*Quick Load file will be deleted)$YN", 0xbf550 ], #a11a8
	["Load this file?%N(*Quick Load files will be deleted)$YN", 0xbf550 ], #a11a8
	["Overwrite?$YN", 0xbf548 ], #a1200
	["Loading data.%NPlease wait.", 0xbf544 ], #a122c
	["Loading data.%NPlease wait.", 0xbf540 ], #a1258
	["System data is corrupted.%NOverwrite system data?$YN", 0xbf53c], #a1288
	["Save system data?$YN", 0xbf538], #a12e4
	["Don't save?$YN", 0xbf524, 0, 0xbf54c, 0], #a1320
	["\\U${title}'s file not found.%NCreate file?$YN", 0xbf52c ], #a1380
	["Formatting.%NCAUTION: Do not remove the disc.", 0xbf528], #a1414
	["The disk is unformatted.%NFormat it?$YN", 0xbf524], #a1458
	["Checking.%NPlease wait.", 0xbf520], #a14a4
	#["Play this data?%N(*Quick Load file will be deleted)$YN", 0xbf74c], # a14f0
	["Start from here?%N(*Quick Load files will be deleted)$YN", 0xbf74c], # a14f0
	["\\EMessage from everyone", 0xbf99c], #a163c
	["\\EMessage from Satoru", 0xbf988], #a165c
	["\\EMessage from Kokoro", 0xbf974], #a1678
	["\\EMessage from Yuni No. 2", 0xbf960 ], #a1698
	["\\EMessage from Hotori", 0xbf94c], #a16c0
	["\\EMessage from Utsumi", 0xbf938], #a16e0
	["\\EMessage from Yuni No. 1", 0xbf924], #a1700
	["\\EMessage from Mayuzumi", 0xbf910], #a1728
	["\\EMessage from Yomogi", 0xbf8fc], #a1744
	["\\EKID Children's Theatre Act XI", 0xbf8e8], #a1764

	["\\16Warning", 0x4d492 ], #a2a84
	["\\16Please insert DVD", 0x4d497], # a2a68
	["\\16Check", 0x4d4af, 0, 0x5fbe1, 0 ], #a2a60
	["\\16Quit game?", 0x4d4b4, 0, 0x5fbe6, 0, ], #a2a48
	) {
	my $str = $item->[0];
	my $mode = 0;
	if (substr ($str, 0, 2) eq "\\E") {
	    $str = escaped_utf_to_sjis(substr ($str, 2));
	} elsif (substr ($str, 0, 2) eq "\\H") {
	    $str = hw_to_fw (substr ($str, 2));
	} elsif (substr ($str, 0, 3) eq "\\16") {
	    $str = encode ("utf16le", substr ($str, 3));
	    $mode = 1;
	} elsif (substr ($str, 0, 2) eq "\\U") {
	    $str = utf_to_sjis (substr($str, 2));
	}
	if (@$item < 2) { print "Warning: Only 1 element on item for '$str'.\n"; }
	my $addr = $data2_starts + $data2_len;
	#my $sj_str = escaped_utf_to_sjis ($str)."\0";
	my $sj_str = ($mode == 0 ? $str."\0" : $str . "\0\0");
	my $out_val = $sj_str;
	printf ("Writing mem=%x, file=%x\n", $addr, $addr - ($data2_starts - $file_len));
	$cvts{($addr - ($data2_starts - $file_len))} = $out_val;
	#$cvts{($addr - ($data2_starts - $file_len))} = encode ("utf8", $str);
	#my $str2 = decode ("utf8", $str);
	#printf ("Writing '%s' at %08x (%s:%s:%s)\n", $str, $addr, utf8::is_utf8($str), utf8::is_utf8($sj_str), utf8::is_utf8($str2));
	for (my $j = 1; $j < @$item; $j += 2) {
	    my $addend = $j + 1 < @$item ? $item->[$j+1] : 0;
	    if ($addend > 100) { die "mistaken series line for '".sjis_to_utf($str)."'"; }
	    #$cvts{($item->[$j])} = pack ("V", $addr + 0x400000);
	    $cvts{($item->[$j])} = pack ("V", $addr + 0x400000 + $addend);
	    #my $i1 = unpack ("V", substr ($dat, $item->[$j], 4)) - 0x400000;
	    my $i1 = unpack ("V", substr ($dat, $item->[$j], 4)) - 0x400000;
	    my $i2;
	    if ($mode == 0) {
		for ($i2 = $i1; substr ($dat, $i2, 1) ne "\0"; ++ $i2) {
		}
		printf ("Replacing data at %08x (originally %08x='%s') with %08x='%s'\n",
		    $item->[$j], $i1 + 0x400000, encode ("utf8", sjis_to_utf (substr ($dat, $i1, $i2 - $i1))), ($addr - ($data2_starts - $file_len)), encode ("utf8", sjis_to_utf ($str)));
		    #$item->[$j], $i1 + 0x400000, encode ("utf8", sjis_to_utf (substr ($dat, $i1, $i2 - $i1))), $item->[0]);
	    } elsif ($mode == 1) {
		for ($i2 = $i1; substr ($dat, $i2, 2) ne "\0\0"; $i2 += 2) {}
		printf ("Replacing data at %08x (originally %08x=W'%s') with %08x: W'%s'\n",
			$item->[$j], $i1 + 0x400000, encode ("utf8", decode ("utf16le", substr ($dat, $i1, $i2 - $i1))), ($addr - ($data2_starts - $file_len)), encode ("utf8", decode ("utf16le", $str)));
	    } else {
		printf ("(unknown mode) Replacing data at %08x (originally %08x='%s') with '%s'\n",
			$item->[$j], $i1 + 0x400000, encode ("utf8", sjis_to_utf (substr ($dat, $i1, $i2 - $i1))), encode ("utf8", sjis_to_utf ($str)));
	    }
	}
	#$data2_len += length ($str);
	$data2_len += length ($out_val);
	while ($data2_len % 4) { ++ $data2_len; }
    }
}

#my @series_items = (
#    ["\\HChoices  ", 0x300b4,0, 0x300bc,4, 0x300c5,8, 0x300ce,12, 0x300d8,16, 0x300e2,18 ], #a0794
#    ["\\HMessages ", 0x2fef4,0, 0x2fefc,4, 0x2ff05,8, 0x2ff0e,12, 0x2ff18,16, 0x2ff22,18 ], # a07b8 
#    ["Play time", 0x1950c,0,  0x19520,4,  0x1952b,8,  0x19537,12,  0x19542,16 ], #9ecf0
#    ["Total time", 0x193e5,0, 0x193eb,8, 0x193f1,4, 0x19403,12, 0x19438,14], #9ed14
#    );

#foreach my $i (@series_items) {
#    my $str = $i->[0];
#    if (substr ($str, 0, 2) eq '\H') {
#	$str = hw_to_fw (substr ($str, 2));
#    }
#    my $mode = 0;
#    my $addr = $data2_starts + $data2_len;
#    #my $sj_str = escaped_utf_to_sjis ($str)."\0";
#    my $sj_str = ($mode == 0 ? $str."\0" : $str . "\0\0");
#    my $out_val = $sj_str;
#    $cvts{($addr - ($data2_starts - $file_len))} = $out_val;
#    printf ("Writing modded %s at %x\n", $i->[0], $addr);
#
#    for (my $k = 1; $k < @$i; $k += 2) {
#	$cvts{($i->[$k])} = pack ("V", $i->[$k+1] + $addr + 0x400000);
#    }
#    $data2_len += length ($out_val);
#    while ($data2_len % 4) { ++ $data2_len; }
#}

if ($data2_len > 0) {
    while ($data2_len % 40960) { 
	#$cvts{($data2_starts + $data2_len - $dat2_delta - 1)} = chr ($data2_len  & 0xff);
	++ $data2_len;
    }
    $cvts{($data2_starts + $data2_len - $dat2_delta - 1)} = chr(0);
}

my $new_init_data = $data2_len;
#$new_init_data = 0;
my $new_init_size = $old_init_size + $new_init_data;
#my $new_image_size = $old_img_size + $new_init_data;
my $new_image_size = $old_img_size + $new_uninit_data + $new_init_data;

$cvts{(0x120)} = pack ("V", $new_init_size); # initialized size
$cvts{(0x124)} = pack ("V", $new_uninit_size);
$cvts{(0x150)} = pack ("V", $new_image_size); # image size
#$cvts{(0x106)} = pack ("v", 5); # no. of sections
$cvts{(0x106)} = pack ("v", 6); # no. of sections
#$cvts{(0x298)} = pack ("C8VVVVVVVV", ".rsrc2", 0x2a00, $new_image_size - 0x3000, 0x3000, 0xce000, 0, 0, 0, 0x40000040);
$cvts{(0x298)} = pack ("Z8VVVVVVvvV", ".bss", 0, $new_initbin_starts, $new_initbin_len, 0, 0, 0, 0, 0, 0xc0000080);
printf ("\$data2_starts=%08x, \$data2_len = %x\n", $data2_starts, $data2_len); 
$cvts{(0x298+0x28)} = pack ("Z8VVVVVVvvV", ".rdata2", 
			    $data2_len, # Physical address /virtual size
			    $data2_starts, # virtual address
			    $data2_len, # raw size
			    length($dat), # pointer to raw
			    0, 0, 0, 0, # Pointers to relocation, line number, no. relocations, no. linnumber
			    0x40000040); # Characteristics
#$cvts{(0x298+0x28)} = pack ("Z8VVVVVVvvV", ".rdata2", $data2_len, $data2_starts, $data2_len, length($dat), 0, 0, 0, 0, 0x40000040);
# name, paddr/vsize, vaddr, rawsize, praw, preloc=0, plinenum=0, nreloc=0, nlinenum=0, chars

open OFH, ">R11-rp.exe";
my $curptr = 0;
printf ("Total length is %x\n", length ($dat));
my @tgts = (sort { $a <=> $b } (keys %cvts));
foreach my $faddr (@tgts) {
    #print "$faddr $curptr\n";
    #printf ("\$_=%x \$curptr=%x tell=%x length=%x\n", $faddr, $curptr, tell(OFH), length($dat));
    if (tell (OFH) != $curptr) {
	die sprintf ("Fatal: Pointer mismatch at %x", $curptr);
    }
    #print $faddr, " ";
    if ($curptr < $faddr) {
	if ($curptr > length ($dat)) {
	    #print "A:";
	    print OFH "\0"x($faddr - $curptr);
	} elsif ($faddr > length ($dat)) {
	    #print "B:";
	    print OFH substr ($dat, $curptr, length($dat) - $curptr);
	    print OFH "\0"x($faddr - length($dat));
	} else {
	    #print "C:";
	    print OFH substr ($dat, $curptr, $faddr - $curptr);
	}
    } elsif ($curptr > $faddr) {
	printf ("*** Overflow: %x / %x ***\n", $curptr, $faddr);
    } else {
	#print "D:";
    }
    if (tell(OFH) != $faddr) {
	die sprintf ("Fatal: Pointer mismatch at \$faddr=%x, tell=%x ", $faddr, tell(OFH));
    }
    #my $s2 = encode ("utf8", $cvts{$faddr});
    my $s2 = $cvts{$faddr};
    my @unpacked = unpack ("C*", $s2);
    if (length ($s2) != scalar @unpacked) {
	printf ("Warning: multibyte string at %x: Writing ", $faddr);
	print length ($s2), ":", (map { sprintf ("%x ", ord($_)) } split //, $s2), " vs ", (scalar @unpacked), (map { sprintf ("%02x ", $_)} @unpacked), ".\n";
    }
	
    print OFH $s2;
    #printf ("Placing %d at %x\n", length ($cvts{$faddr}), $faddr);
    $curptr = $faddr + length ($s2);
    if (tell (OFH) != $curptr) {
	die sprintf ("Fatal: Pointer mismatch at tell=%x, \$curptr=%x", tell(OFH), $curptr);
    }
}
if ($curptr < length ($dat)) {
    print OFH substr ($dat, $curptr);
}
close OFH;
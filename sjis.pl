#!/usr/bin/perl
use strict;
use utf8;
#my @dat;

my %single_bytes = (); # Maps SJIS bytes to escaped UTF characters
my %double_bytes = (); # Maps SJIS bytes to escaped UTF characters
my %reverse_lookup = (); # Maps UTF character to SJIS bytes

my %pseudo_sjis = (); # Maps UTF characters to 2-byte SJIS expansion, even if the original was a 1-byte version

my %hw = ();

sub map_hw { # Map halfwidth
    my ($start, $str) = @_;
    for (my $i = 0; $i < length ($str); ++ $i) {
	my $n = $start + $i;
	#$hw{(substr ($str, $i, 1))} = chr ($n >> 8). chr ($n & 0xff);
	$hw{(substr ($str, $i, 1))} = pack ("n", $n);
    }
}

sub hw_to_fw { # halfwidth to fullwidth
    return join ("", map { $hw{$_} } split //, $_[0])."\0";
}


if (1) {
    map_hw (0x8143, ",. :;?!");
    map_hw (0x817c, "-");
    map_hw (0x8140, " ");
    map_hw (0x8169, "()");
    map_hw (0x816D, "[]{}");
    map_hw (0x824f, "0123456789");
    map_hw (0x8260, join ("", map { chr ($_) } ord ("A")..ord("Z")));
    map_hw (0x8281, join ("", map { chr ($_) } ord ("a")..ord("z")));

    local @ARGV = ('cp932.txt');

    my $d = '[0-9A-F]';
    my $d2 = "0x(${d}${d})";
    my $d4 = "0x(${d}${d}${d}${d})";

    while (<>) {
	$_ =~ s/#.*//;
	next if ($_ =~ /^\s*$/);
	
	if ($_ =~ /^$d2\s+$d4\s$/o) {
	    $single_bytes{(pack ('c', hex ($1)))} = chr(hex($2));
	    $reverse_lookup{(chr(hex($2)))} = pack ('c', hex ($1));
	} elsif ($_ =~ /^$d4\s+$d4\s$/o) {
	    $double_bytes{(pack ('n', hex ($1)))} = chr(hex($2));
	    $reverse_lookup{(chr(hex($2)))} = pack ('n', hex ($1));
	} elsif ($_ =~ /^$d2\s*$/o) {
	} else {
	    print "Bad line '$_'\n";
	}
    }
    $single_bytes{('"')} = '\"';
    $double_bytes{("\x87S")} = '\x01';
    $double_bytes{("\x87T")} = '\x02';
    $double_bytes{("\x87U")} = '\x03';
    #$double_bytes{("\x81\x7c")} = '-';
    $double_bytes{("\x81\x7c")} = chr (0x2212);
    #$double_bytes{("\x81\x7c")} = "**";
    $reverse_lookup{("\x01")} = "\x87S";
    $reverse_lookup{("\x02")} = "\x87T";
    $reverse_lookup{("\x03")} = "\x87U";

    #$reverse_lookup{(chr(0x2212))} = "-";
    #$reverse_lookup{(chr(0x2014))} = "-";
    $reverse_lookup{(chr(0x2212))} = "\x81\x7c";
    $reverse_lookup{(chr(0x2014))} = "\x81\x7c";
    $reverse_lookup{(chr(0x301c))} = "~";

    #$reverse_lookup{(chr(0x2160))} = "\x87\x54"; # Roman I
    #$reverse_lookup{(chr(0x2161))} = "\x87\x55"; # Roman II
    #$reverse_lookup{(chr(0x2162))} = "\x87\x56"; # Roman III
    #$reverse_lookup{(chr(0x2163))} = "\x87\x57"; # Roman IV
    #$double_bytes {"\x87\x54"} = chr(0x2160);
    for (my $i = 0; $i < 4; ++ $i) { # Roman ($i + 1)
	my $str = "\x87".chr(0x54+$i);
	$reverse_lookup{(chr(0x2160+$i))} = $str;
	$double_bytes{$str} = chr(0x2160+$i);
    }


    $double_bytes{("\x86\x40")} = "\xf6"; # o umlaut
    #$double_bytes{("\x86\x40")} = chr(0xfffd); # o umlaut
    $reverse_lookup{("\xf6")} = "\x86\x40";
    $reverse_lookup{(chr(0xfffd))} = "\x86\x40";
    $double_bytes{("\x86\x43")} = "\xef"; # i umlaut
    $reverse_lookup{("\xef")} = "\x86\x43";
    $double_bytes{("\x86\x44")} = "\xe9"; # e-accent
    #$reverse_lookup{("\xc3")} = "\x86\x44";
    $reverse_lookup{("\xe9")} = "\x86\x44";
    $double_bytes{("\x86\x41")} = " ";

    %pseudo_sjis = (%reverse_lookup);
    for (my $i = 0x21; $i <= 0x7e; ++ $i) {
	my $str;
    if (1) {
        if ($i <= 0x5f) {
            $str = pack ("CC", 0x85, $i+0x1f);
        } else {
            $str = pack ("CC", 0x85, $i+0x20);
        }
    }
    else {
        $str = pack ("CC", 0x85, $i);
    }
	$pseudo_sjis{(chr($i))} = $str;
	$double_bytes{($str)} = chr($i);
    }
    $pseudo_sjis{" "} = "\x86\x41";

    #$double_bytes(("
    #foreach (keys %single_bytes) {
    #	$reverse_lookup{($single_bytes{$_})} = $_;
    #}
    #foreach (keys %double_bytes) {
    #	$reverse_lookup{($double_bytes{$_})} = $_;
    #}
    for (my $i = 0x21; $i <= 0x7e; ++ $i) {
	if ($i < 0x4f) {
	    $double_bytes{(pack("CC",0x86, $i + 0x2f))} = "<I>".chr($i)."</I>";
	} else {
	    $double_bytes{(pack("CC",0x86, $i + 0x30))} = "<I>".chr($i)."</I>";
	}
    }
    #foreach my $k (sort keys %double_bytes) {
    #	printf ("%x -> %s.\n", unpack ("n", $k), join ('', map { sprintf ("%02x ", ord($_)) } split //, $double_bytes{$k}));
    #}
}

sub utf_to_italic_sjis {
    local $_;
    #return $_[0];
    my $rv = join ('', map {
	#print STDERR $_, ".\n";
	if ($_ > 0x20 && $_ <= 0x4f) { pack ("CC",0x86, $_ + 0x2f); }
	elsif ($_ > 0x4e && $_ <= 0x7e) { pack ("CC", 0x86, $_ + 0x30); }
	elsif ($_ == 0x20) { "\x86\x41"; }
	else { pack("C", $_); }
		 } unpack ("C*", $_[0]));
    if (utf8::is_utf8 ($rv)) {
	#print "$rv is utf8\n";
    } else {
	#print "$rv is not utf8\n";
    }
    return $rv;
}

sub utf_to_sjis {
    my $rv = '';
    #print "utf_to_sjis($_[0])\n";
    #my $verbose = 0;
    #if ($_[0] =~ /Schr/ && $_[0] =~ /Equation/) { $verbose = 1; }
    for (my $i = 0; $i < length ($_[0]); ++ $i) {
	my $ch = substr ($_[0], $i, 1);
	if ($ch eq '<' && substr ($_[0], $i) =~ m|^(<[iI]>(.*?)</[Ii]>)|) {
	    $i += length($1) - 1;
	    $rv .= utf_to_italic_sjis ($2);
	} elsif (defined $reverse_lookup{$ch}) {
	    $rv .= $reverse_lookup{$ch};
	    #if ($verbose) { printf ("%x -> %s\n", ord (substr ($_[0], $i, 1)), $reverse_lookup {(substr ($_[0], $i, 1))}); }
	} else {
	    #printf STDERR ("bad character %04x : ", ord (substr ($_[0], $i, 1)));
	    printf ("bad character %04x in utf_to_sjis : ", ord ($ch));
	    for (my $j = 0; $j < length ($_[0]); ++ $j) {
            #printf STDERR ("%x ", ord (substr ($_[0], $j, 1)));
            if ($j >= $i - 10 && $j <= $i + 10) {
                printf ("%s%x%s", ($j == $i) ? "[":"", ord (substr ($_[0], $j, 1)), ($j == $i) ? "]" : " ");
            }
	    }
	    #print $_[0];
	    #print STDERR "\n";
	    print "\n";
	}
    }
    #if ($verbose) { die; }
    #print "utf to sjis ($_[0]) -> $rv\n";
    #print "utf to sjis ($_[0])\n";
    return $rv;
}

sub escaped_utf_to_sjis {
    my $rv = '';
    for (my $i = 0; $i < length ($_[0]); ++ $i) {
	if (defined $pseudo_sjis{(substr ($_[0], $i, 1))}) {
	    $rv .= $pseudo_sjis{(substr ($_[0], $i, 1))};
	} else {
	    #printf STDERR ("bad character %04x in ", ord (substr ($_[0], $i, 1)));
	    printf ("bad character %04x in escaped_utf_to_sjis : ", ord (substr ($_[0], $i, 1)));
	    for (my $j = 0; $j < length ($_[0]); ++ $j) {
            #printf STDERR ("%x ", ord (substr ($_[0], $j, 1)));
            if ($j >= $i - 10 && $j <= $i + 10) {
                printf ("%x ", ord (substr ($_[0], $j, 1)));
            }
	    }
        
        print "(";
        for (my $j = 0; $j < length ($_[0]); ++ $j) {
            #printf STDERR ("%x ", ord (substr ($_[0], $j, 1)));
            if ($j >= $i - 10 && $j <= $i + 10) {
                printf ("%s", substr ($_[0], $j, 1));
            }
	    }
        print ")";
        
	    #print STDERR "\n";
	    print "\n";
	}
    }
    #printf ("escaped_utf_to_sjis (%s) -> '%s'\n", $_[0], $rv);
    #printf ("escaped_utf_to_sjis (%s)\n", $_[0], $rv);
    return $rv;
}


sub sjis_to_utf {
    my $rv = '';
    #my $ct = 0;
    
    for (my $i = 0; $i < length ($_[0]); ++ $i) {
	#my $b1 = $single_bytes{(substr($_[0], $i, 1))};
	#my $b2 = $double_bytes{(substr($_[0], $i, 2))};
	#$rv .= '-';
	if (defined $single_bytes{(substr($_[0], $i, 1))}) { 
	    $rv .= $single_bytes{(substr($_[0], $i, 1))};
	    #++ $ct;
	} elsif (defined $double_bytes{(substr($_[0], $i, 2))}) {
	    $rv .= $double_bytes{(substr($_[0], $i, 2))};
	    ++ $i;
	    #++ $ct;
	} else {
	    if ($i + 1 == length ($_[0])) {
		printf ("# sjis_to_utf: Bad character %02x in ", unpack ('C', substr ($_[0], $i, 1)));
	    } else {
		printf ("# sjis_to_utf: Bad character %04x in ", unpack ('n', substr ($_[0], $i, 2)));
	    }
	    my $min = $i - 10 < 0 ? 0 : $i - 10;
	    my $max = $i + 10 > length($_[0]) ? length($_[0]) : $i + 10;
	    for (my $j = $min; $j < $max; ++ $j) {
            printf ("%02x ", ord (substr ($_[0], $j, 1)));
	    }
	    print ".\n";
	    #$ct += 100;
	}
    }
    #print $ct, ".\n";
    #if ($rv =~ m/段ボールが/ || $_[0] =~ m/段ボールが/) {
    if (0) {
	print "$rv: ";
	for (my $i = 0; $i < length($_[0]); ++ $i) {
	    printf ("%02x ", ord (substr ($_[0], $i, 1)));
	}
	print ".\n";
	#die;
    }
    #print "#sjis_to_utf (", join (' ', map { sprintf ("%02x", $_) } unpack ("C*", $_[0])), ") -> $rv\n";

    return $rv;
}

#binmode STDOUT, ":utf8";
#print sjis_to_utf ("¥x82¥x81¥x82¥x90¥x82¥x90¥x82¥x81¥x82¥x92¥x82¥x85¥x82¥x8e¥x82¥x94¥x81¥x40¥x82¥x4f.¥n");
#my $str = "\x82\x81\x82\x90\x82\x90\x82\x81\x82\x92\x8\x82\x8e\x82\x94\x81\x40\x82\x4f";
#my $str = "\x82\x81\x82\x90\x82\x90\x82\x81\x82\x92\x82\x85\x82\x8e\x82\x94\x81\x40\x82\x4f";
#print $str, ".\n";
#print sjis_to_utf ($str), ".\n";
#print sjis_to_utf ("\x82\x81\x82\x90\x82\x90\x82\x81\x82\x92\x8\x82\x8e\x82\x94\x81\x40\x82\x4f"), ".\n";
    
#print utf_to_sjis (sjis_to_utf ($str)), ".\n";

1;

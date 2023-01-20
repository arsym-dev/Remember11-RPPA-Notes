#!/usr/bin/perl

use strict;
use Encode qw/encode decode/;
require 'myinitbin.pl';
require 'tips2_data.pl';
require 'sjis.pl';

require 'r11_tr/unbip.pm';

sub MAKE_BASE_DATA            { return bless [ @_ ], 'BASE_DATA'; }
sub MAKE_DWORDS               { return bless [ @_ ], 'DWORDS'; }
sub MAKE_JUKEBOX_DATA         { return bless [ @_ ], 'JUKEBOX_DATA'; }
sub MAKE_JUKEBOX_ITEM         { return bless [ @_ ], 'JUKEBOX_ITEM'; }
sub MAKE_RAW                  { return bless [ @_ ], 'RAW'; }
sub MAKE_STRING_TABLE         { return bless [ @_ ], 'STRING_TABLE'; }
sub MAKE_TABLE_5C             { return bless [ @_ ], 'TABLE_5C'; }
sub MAKE_TABLE_5C_MEMBER      { return bless [ @_ ], 'TABLE_5C_MEMBER'; }
sub MAKE_TABLE_64             { return bless [ @_ ], 'TABLE_64'; }
sub MAKE_TABLE_64_MEMBER      { return bless [ @_ ], 'TABLE_64_MEMBER'; }
sub MAKE_TIPS_DATA            { return bless [ @_ ], 'TIPS_DATA'; }
sub MAKE_COMMENT              { return (); }
sub MAKE_ESCAPED              { return bless [ @_ ], 'ESCAPED'; }
sub MAKE_ESCAPED_STRING_TABLE { return bless [ @_ ], 'ESCAPED_STRING_TABLE'; }

#my %j2e = ();
#my %unused_txt = ();
#if (0) {
#    local @ARGV = ('my-R11_init.txt',
#		   'R11_init.txt'
#	);
#    my @tmp = <>;
#    while (@tmp) {
#	while ($tmp[0] =~ m|^\s*$| || $tmp[0] =~ m|^\s*//|) {
#	    shift @tmp;
#	}
#	last if (@tmp == 0);
#	my $jline = shift @tmp;
#	chomp $jline;
#	die "bad convert file" if $tmp[0] =~ m|^\s*$| || $tmp[0] =~ m|^\s*//|;
#	my $eline = '';
#	while ($tmp[0] !~ /^\s*$/) {
#	    chomp $tmp[0];
#	    if ($tmp[0] =~ m|^\s*//|) {
#		shift @tmp;
#	    } else {
#		$eline = $eline . '%N' . shift @tmp;
#	    }
#	}
#	$eline = substr ($eline, 2);
#	#my $eline = shift @tmp;
#	#chomp $eline;
#	$j2e{$jline} = $eline;
#	$unused_txt{$jline} = $eline;
#
#	#my $alt_jline = $jline;
#	#if ($jline =~ /\\x02/) {
#	#    $alt_jline =~ s/\\x02/I/g;
#	#}
#	#if ($jline =~ /\\x03/) {
#	#    $alt_jline =~ s/\\x02/II/g;
#	#}
#	#if ($jline =~ /\xe2\x88\x92/) {
#	#    print "Changing dash.\n";
#	#    $alt_jline =~ s/\xe2\x88\x92/-/g;
#	#}
#	#if ($alt_jline ne $jline) {
#	#    $j2e{$alt_jline} = $eline;
#	#}
#	#print "Added conversion '$jline' '$eline'.\n";
#    }
#}


my %write_data = ();
my $write_pointer = 0;
my @write_queue = ();

sub write_data {
    $write_data{$write_pointer} = $_[0];
    $write_pointer += length ($_[0]);
    #printf ("Advancing write point by %d to %08x\n", length($_[0]), $write_pointer);
}
sub write_dword {
    write_data (pack ("V", $_[0]));
}
sub write_dword_at {
    $write_data{($_[1])} = pack ("V", $_[0]);
}
sub write_null {
    write_data ("\0\0\0\0");
}
sub dword_align {
    while ($write_pointer % 4 != 0) {
	write_data ("\x90");
    }
}
sub enqueue_pointer {
    #printf ("Enqueing pointer to %s at %08x.\n", ref $_[0], $write_pointer);
    push @write_queue, $write_pointer;
    push @write_queue, $_[0];
    write_data ("\xde\xad\xbe\xef");
}

my $escaped_write_count = 0;
#my %dword_aligned = map { $_ => 1 } qw/DWORDS STRING_TABLE JUKEBOX_DATA TABLE_5C_MEMBER TABLE_5C TABLE_64 TABLE_64_MEMBER/;
sub write_object {
    my $r = ref $_[0];
    #print "Writing object of type $r.\n";
    #if (defined $dword_aligned{$r}) { dword_align(); }
    if (defined $r && $r ne 'RAW') { dword_align(); }
    my $rv = $write_pointer;

    if ($r eq '' || $r eq 'ESCAPED') {
	#my $line = $_[0];
	my $line = ($r eq 'ESCAPED' ? $_[0][0] : $_[0]);
	#if (0) {
	#    print "Found conversion $line to $j2e{$line}.\n";
	#    $line = $j2e{$line};
	#    delete $unused_txt{$line};
	#} else {
	#    my $alt_line = $line;
	#    if ($line =~ /\x01/) {
	#	$alt_line =~ s/\x01/ /g;
	#    }
	#    if ($line =~ /\x02/) {
	#	$alt_line =~ s/\x02/I/g;
	#    }
	#    if ($line =~ /\x03/) {
	#	$alt_line =~ s/\x03/II/g;
	#    }
	#    if ($line =~ /\xef\xbc\x8d/) {
	#	$alt_line =~ s/\xef\xbc\x8d/\xe2\x88\x92/g;
	#    }
	#    if ($alt_line ne $line && defined $j2e{$alt_line}) {
	#	print "Found alt conversion for $line to $j2e{$alt_line}\n";
	#	$line = $j2e{$alt_line};
	#	delete $unused_txt{$alt_line};
	#    } else {
	#	if ($line =~ m/こころ7/) {
	#	    print "No conversion found for $line ";
	#	    if ($line ne $alt_line) {
	#		print "/ $alt_line";
	#	    }
	#	    print ": ";
	#	    for (my $i = 0; $i < length ($alt_line); ++ $i) {
	#		printf ("%x ", ord (substr ($alt_line, $i, 1)));
	#	    }
	#	    print ".\n";
	#
	#	    foreach my $k (keys %j2e) {
	#		if ($k =~ m/こころ7/) {
	#		    print "Poss match $k: ";
	#		    for (my $i = 0; $i < length ($k); ++ $i) {
	#			printf ("%x ", ord (substr ($k, $i, 1)));
	#		    }
	#		    print ".\n";
	#		}
	#	    }
	#	}
	#    }
	#}
	if ($r eq 'ESCAPED') {
	    write_data (escaped_utf_to_sjis (decode ("utf8", $line))."\0");
	} else {
	    write_data (utf_to_sjis (decode ("utf8", $line))."\0");
	}
	#write_data (utf_to_sjis (decode ("utf8", $_[0]))."\0");
    } elsif ($r eq 'DWORDS') {
	write_data (pack ('V*', @{$_[0]}));
	#} elsif ($r eq 'ESCAPED') {
	#	local $_;
	#	if (0 && $escaped_write_count < 16) {
	#	    my $str = escaped_utf_to_sjis (sprintf("86 %02x:", $escaped_write_count));
	#	    for (my $i = 0; $i < 16; ++ $i) {
	#		$str .= chr(0x86).chr(16*$escaped_write_count + $i);
	#	    }
	#	    write_data ($str . "\0");
	#	    ++ $escaped_write_count;
	#	} else {
	#	    foreach (@{$_[0]}) {
	#		print "# Handling escaped '$_'\n";
	#		write_data (escaped_utf_to_sjis (decode ("utf8", $_))."\0");
	#	    }
	#	}
    } elsif ($r eq 'STRING_TABLE') {
	local $_;
	foreach (@{$_[0]}) {
	    enqueue_pointer ($_);
	}
	write_null ();
    } elsif ($r eq 'ESCAPED_STRING_TABLE') {
	local $_;
	foreach (@{$_[0]}) {
	    #enqueue_pointer ( $_ );
	    enqueue_pointer (bless [ $_ ], 'ESCAPED');
	    #enqueue_pointer (escaped_utf_to_sjis(decode("utf8", $_))."\0");
	}
	write_null ();
    } elsif ($r eq 'BASE_DATA') {
	local $_;
	foreach (@{$_[0]}) {
	    enqueue_pointer ($_);
	}	    
    } elsif ($r eq 'JUKEBOX_ITEM') {
	die "FALLTHROUGH";
    } elsif ($r eq 'JUKEBOX_DATA') {
	local $_;
	foreach (@{$_[0]}) {
	    enqueue_pointer ($_->[0]);
	    enqueue_pointer ($_->[1]);
	    enqueue_pointer ($_->[2]);
	    write_object ($_->[3]);
	}
	write_null();
    } elsif ($r eq 'RAW') {
	write_data ($_[0]->[0]);
    } elsif ($r eq 'TABLE_5C') {
	local $_;
	foreach (@{$_[0]}) {
	    enqueue_pointer ($_);
	}
	write_null();
    } elsif ($r eq 'TABLE_5C_MEMBER') {
	#print length ($_[0][0]),".\n";
	#print join (" ", @{$_[0]}), ".\n"; 
	#write_data ($_->[0][0]);
	for (my $i = 0; $i < 60; $i += 3) {
	    #print $_
	    #printf ("%x ", length ($_[0]->[$i][0]));
	    write_object ($_[0]->[$i]);
	    #write_data ($_[0]->[$i][0]);
	    enqueue_pointer ($_[0]->[$i+1]);
	    enqueue_pointer ($_[0]->[$i+2]);
	}
	#print ".\n";
    } elsif ($r eq 'TABLE_64') {
	foreach (@{$_[0]}) {
	    #print $_, ".\n";
	    enqueue_pointer ($_);
	    write_dword ((scalar @$_) / 2);
	}
	write_null();
    } elsif ($r eq 'TABLE_64_MEMBER') {
	local $_;
	#print "TABLE_64_MEMBER (", $_[0], ")\n";
	#foreach (@{$_[0]}) {
	#    enqueue_pointer ($_->[0]);
	#    write_dword ($_->[1]);
	#}
	#print "[", join (" ", @{$_[0]}), "]\n";
	for (my $i = 0; $i < @{$_[0]}; $i += 2) {
	    my $str_a = $_[0]->[$i][0];
	    #if (defined $j2e{$str_a}) { $str_a = $j2e{$str_a}; }
	    #enqueue_pointer ($_[0]->[$i]);
	    #write_dword ($_[0]->[$i+1]);
	    if ($str_a =~ /^(.*)%N(.*)$/) {
		#printf ("Splitting '%s' into '%s' and '%s'.\n", $str_a, $1, $2);
		my $str1 = $1;
		my $str2 = $2;
		enqueue_pointer (bless [$str1],'ESCAPED');
		write_dword ($_[0]->[$i+1]);
		#enqueue_pointer (bless[$str2],'ESCAPED');
		#write_dword ($_[0]->[$i+1]);
	    } else {
		#printf ("Passing '%s'\n", $str_a);
		enqueue_pointer ($_[0]->[$i]);
		write_dword ($_[0]->[$i+1]);
	    }		
	}
    } elsif ($r eq 'TIPS_DATA') {
	local $_;
	foreach (@{$_[0]}) {
	    enqueue_pointer ($_);
	}
	write_null();
    } else {
	#print STDERR "Bad object type ".$r.".\n";
	print "Bad object type ".$r.":".length($r).".\n";
    }
    return $rv;
}

my $obj = get_data();
$obj->[26] = get_formatted_tips();

sub set_item {
    my ($root, $newval, @args) = @_;
    while (@args > 1) {
	$root = $root->[shift @args];
    }
    #printf ("Replacing '%s' with '%s'.\n", $root->[$args[0]], $newval);
    $root->[$args[0]] = $newval;
}

my $lyric_count = 0;
if (1) {
    local @ARGV = ('initbin.B.txt');
    #while (<>) {
    #	if ($_ =~ /<pre>/) { last; }
    #}
    while (<>) {
	my $has_lyric = /Lyric/i ? 1 : 0;
	#if (m|</pre>|) { last; }
	$_ =~ s/[\r\n]*$//;
	my $in = $_;
	if (/^\s*$/ || /^\#/) { next; }
	#print "Read $_\n";
	$_ =~ s/\\x\{0?1}/\x01/g;
	$_ =~ s/\\x\{0?2}/\x02/g;
	$_ =~ s/\\x\{0?3}/\x03/g;
	#if ($_ ne $in) { print "'$in' -> '$_'\n"; }
	if ($_ =~ /^\[0x([0-9a-f]*):([0-9,]*)\]: '(.*)'\s*$/) {
	    #print "Good line '$_'\n";
	    set_item ($obj, $3, split /,/, $2);
	    #set_item ($obj, $3.($has_lyric ? ('*'.++$lyric_count) : ''), split /,/, $2);
	} else {
	    print "Bad line '$_'\n";
	}
    }
}
if (1) {
    my @found = ();
    my @pending = ();
    local @ARGV = ('lyrics.txt');
    while (<>) {
	#print "Read $_";
	my $has_lyric = /Lyric/i ? 1 : 0;
	s/[\r\n]*$//;
	my $in = decode ("utf8", $_);
	$_ = $in;
	if (/^\s*$/ || /^\s*\#/) { next; }
	$_ =~ s/\\x\{0?1}/\x01/g;
	$_ =~ s/\\x\{0?2}/\x02/g;
	$_ =~ s/\\x\{0?3}/\x03/g;
	#if ($_ ne $in) { print "'$in' -> '$_'\n"; }
	if (/^\s*\{\s*$/) { 
	    #print "Skipped\n";
	    next;
	} elsif (/^\s*\}\s*$/) { 
	    push @found, (bless [@pending], 'TABLE_64_MEMBER');
	    #print "Pushed @pending\n";
	    @pending = ();
	} elsif (/^\s*([0-9]*),\s*'(.*?)'\s*\**\s*$/) {
	    if (length ($2) > 63) { print "Line '$2' is too long at ", length($2), ".\n"; }
	    push @pending, (bless [ encode ("utf8", $2) ], 'ESCAPED');
	    #push @pending, (bless [ encode ("utf8", $2 . ($has_lyric ? ('***'.(++$lyric_count)):'')) ], 'ESCAPED');
	    push @pending, $1;
	    #print "   Added $1 $2\n";
	} else {
	    #print "Bad lyric line $_.\n";
	}
    }
    $obj->[25] = bless \@found, 'TABLE_64';
}
print "Done handling table_64\n";

write_object ($obj);

#write_object (get_data());
while (@write_queue) {
    my $dest_place = shift @write_queue;
    my $dest_obj = shift @write_queue;
    #printf ("dequeing pointer to %s at %08x.\n", ref $dest_obj, $dest_place);
    my $obj_addr = write_object ($dest_obj);
    #printf ("dequeing pointer to %s at %08x : %08x.\n", 
    #	    ref $dest_obj, $dest_place, $obj_addr);
    write_dword_at ($obj_addr, $dest_place);
}

#my $total_unused = 0;
#foreach (keys %unused_txt) {
#    print "Unused: $_ -> $unused_txt{$_}\n";
#    ++ $total_unused;
#}
#print "Total of $total_unused unused.\n";

open OFH, ">init.unbip.rp";
my $out_ptr = 0;
my $pad_count = 0;
foreach my $addr (sort { $a <=> $b } keys %write_data) {
    while ($out_ptr < $addr) {
	print OFH "\x90";
	++ $pad_count;
    }
    if ($out_ptr > $addr) {
	die "OVERFLOW at $addr : $out_ptr";
    }
    my $item = $write_data{$addr};
    print OFH $item;
    $out_ptr += length ($item);
}
close OFH;
#system ("r11_tr/compressbip", "init.unbip.rp", "init.rp");

print "Total of $pad_count padding bytes\n";


local $/;
open IFH, "init.unbip.rp";
my $dat = <IFH>;
close IFH;
print "init file is ", length($dat), " when uncompressed.\n";

#my $dat1 = do_compress_non ($dat);
#my ($unc1, $ok1) = do_uncompress($dat1);
#my $good1 = ($unc1 eq $dat) ? "GOOD":"BAD";
my $dat2 = do_compress_fast ($dat);
my ($unc2, $ok2) = do_uncompress($dat2);
#my $good2 = ($unc2 eq $dat) ? "GOOD":"BAD";


if ($unc2 ne $dat) {
    print "Bad compression\n";
    $dat2 = do_compress_non($dat);
} else {
    print "Compressed from ", length ($dat), " to ", length($dat2), ".\n";
}
#print "Noncompression is ", length($dat1), " $ok1 $good1\n";
#print "unc2 is ", length ($unc2), ".\n";
#print "full compression is ", length ($dat2), " $ok2 $good2.\n";

open OFH, ">init.rp";
print OFH $dat2;
close OFH;

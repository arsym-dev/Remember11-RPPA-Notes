#!/usr/bin/perl
use strict;
use Encode qw/encode decode/;
require './sjis.pl';

sub indent {
    #print "\n", "  "x$_[0], '"', $_[1], '"';
    print "\n", "  "x$_[0], $_[1];
}

my %hex_refs = map { $_ => 1 } qw/WORDS DWORDS/;
my %simple_refs = map { $_ => 1 } qw/BYTES RAW COMMENT/;
sub dump_tree {
    my ($depth, $item) = @_;
    if (ref $depth) { die "Bad value for \$depth: $depth"; }
    #print "\ndump_tree ($depth, $item)";
    #return;
    if (!ref $item) {
	if ($item =~ /^[0-9]+$/) {
	    indent ($depth, $item);
	} else {
	    indent ($depth, '"'.$item.'"');
	}
    } elsif (defined $hex_refs {(ref $item)}) {
	indent ($depth, "MAKE_".(ref $item)." (".join (", ", map { sprintf ("0x%x", $_) } @$item).")");
    } elsif (defined $simple_refs{(ref $item)}) {
	indent ($depth, "MAKE_".(ref $item)." (".join (", ", @$item).")");
    } else {
	my @item = @$item;
	if (@item == 0) {
	    indent ($depth, "MAKE_".(ref $item)." ()");
	} elsif (@item == 1 && !ref $item[0]) {
	    if ($item[0] =~ /^[0-9]+$/) {
		indent ($depth, "MAKE_".(ref $item). "(". $item[0].")");
	    } else {
		indent ($depth, "MAKE_".(ref $item). "(\"". $item[0]."\")");
	    }
	} else {
	    #indent ($depth, "MAKE_".(ref $item)." (");
	    indent ($depth, "MAKE_".(ref $item));
	    indent ($depth + 1, "(");
	    for (my $i = 0; $i < @item; ++ $i) {
		if ($i > 0) { print ","; }
		dump_tree ($depth + 2, $item[$i]);
	    }
	    indent ($depth + 1, ")");
	}
    }
}

#dump_tree (1, [1, 2, 3]);
#dump_tree (1, [ 1, 1, "ABC", bless [ "XYZ", 17 ], "FOO" ]);
#print "\n";




my $dat;
if (@ARGV == 0) {
    local $/;
    #local @ARGV = ('r11_tr/init.unbip');
    local @ARGV = ('init.unbip.rp');
    $dat = <>;
} elsif (@ARGV == 1) {
    local $/;
    local @ARGV = @ARGV;
    $dat = <>;
} else {
    die "Usage: perl $0 (init.bin file)\n";
}
print "# got data\n";

my @dat = unpack ("C*", $dat);
my @used = (0)x length($dat);
sub use_ptr {
    my $ptr = $_[0];
    ++ $used[$ptr];
    ++ $used[$ptr+1];
    ++ $used[$ptr+2];
    ++ $used[$ptr+3];
}
sub grab_dword {
    use_ptr ($_[0]);
    return unpack ("V", substr ($dat, $_[0], 4));
}
sub grab_word {
    my $ptr = $_[0];
    ++ $used[$ptr];
    ++ $used[$ptr+1];
    return unpack ("v", substr ($dat, $ptr, 2));
}
#sub sjis_to_utf { return $_[0]; }
sub grab_string {
    my $addr = shift;
    my $i;
    #printf ("Grabbing string at %x.\n", $addr);
    for ($i = $addr; $dat[$i] != 0; ++ $i) {
	++ $used[$i];
    }
    if ($i > @used) { printf ("Extending to %x\n", $i); }
    ++ $used[$i];
    if ($i == $addr && $dat[$i+1] == 0) { ++ $used[$i+1]; }
    #return sjis_to_utf (substr ($dat, $addr, $i - $addr));
    #print substr ($dat, $addr, $i - $addr), ".\n";
    my $tmp = sjis_to_utf (substr ($dat, $addr, $i - $addr));
    $tmp =~ s/\\\"/\"/g;
    $tmp =~ s/\"/\\\"/g;
    return $tmp;

    #return (substr ($dat, $addr, $i - $addr));
}
sub grab_string_from { return grab_string (grab_dword ($_[0])); }
sub grab_escaped_string { return bless [ grab_string (@_) ], 'ESCAPED'; }
sub grab_escaped_string_from { return bless [ grab_string_from (@_) ], 'ESCAPED'; }

sub grab_string_table {
    my @rv = ();
    my $ptr = shift;
    #printf ("#grabbing string table at %x\n", $ptr);
    for (;;) {
	my $addr = grab_dword ($ptr);
	last if $addr == 0;
	push @rv, grab_string ($addr);
	$ptr += 4;
    }
    return bless \@rv, 'STRING_TABLE';
}
sub grab_string_table_from {
    #printf ("#grabbing string table from %x\n", $_[0]);
    return grab_string_table (grab_dword ($_[0]));
}
sub grab_escaped_string_table_from {
    my $rv = grab_string_table_from (@_);
    bless $rv, 'ESCAPED_STRING_TABLE';
    return $rv;
}

sub grab_tips_data {
    #printf ("grab_tips_data (%x)\n", $_[0]);
    my $start = grab_dword ($_[0]);
    my $ptr = $start;
    my @rv = ();
    for (;;) {
	my $addr = grab_dword ($ptr);
	#printf ("Grabbed %x from %x\n", $addr, $ptr);
	last if ($addr == 0);
	push @rv, grab_string_table($addr);
	#print $rv[-1][0], ".\n";
	$ptr += 4;
    }
    return bless \@rv, 'TIPS_DATA';
}
sub grab_tips_data_from { return grab_tips_data (grab_dword ($_[0])); }

sub grab_jukebox_data {
    #print "grab_jukebox_data()\n";
    my $ptr = grab_dword ($_[0]);
    my @rv = ();
    for (;;) {
	my $addr = grab_dword ($ptr);
	last if ($addr == 0);
	push @rv, bless [ grab_escaped_string ($addr),
			  grab_escaped_string_from ($ptr + 4),
			  grab_escaped_string_from ($ptr + 8),
			  #grab_raw_memory ($ptr + 0xc, $ptr + 0x18),
			  grab_words ($ptr + 0xc, 4),
			  grab_dwords ($ptr + 0x14, 1),
			  # Meaning: Looped Number, Unlooped number, ???, 0,
			  # Lyric index or -1
	    ], 'JUKEBOX_ITEM';
	$ptr += 0x18;
    }
    return bless \@rv, 'JUKEBOX_DATA';
}

sub show_unused_data {
    my $total_unused = 0;
    my $last_ct = 0;
    for (my $i = 0; $i < length ($dat); $i += 16) {
	my $lim = 16;
	if ($i + 16 > @dat) { $lim = @dat - $i; }
	if (1) {
	    my $ct = 0;
	    for (my $j = 0; $j < $lim; ++ $j) {
		if ($used[$i + $j] != 1) {
		    ++ $ct;
		    ++ $total_unused;
		}
	    }
	    if ($ct == 0 && $last_ct != 0) {
		print "# ...\n";
	    }
	    $last_ct = $ct;
	    next if ($ct == 0);
	}
	printf ("# %08x: ", $i);
	for (my $j = 0; $j < $lim; ++ $j) {
	    if ($used[$i + $j] == 1) {
		print "-- ";
	    } elsif ($used[$i + $j] > 0) {
		printf ("[%d]", $used[$i + $j]);
	    } else {
		printf ("%02x ", $dat[$i + $j]);
	    }
	}
	print "\n";
    }
    print "# Total unused memory: $total_unused\n";
}

sub grab_raw_memory {
    my ($start, $end) = @_;
    #my $rv = '';
    my $rv = '"';
    for (my $i = $start; $i < $end; ++ $i) {
	$rv .= sprintf ("\\x%02x", $dat[$i]);
	++ $used[$i];
    }
    $rv .= '"';
    #return $rv . '"';
    return bless [$rv], 'RAW';
}
sub grab_raw_memory_by {
    return grab_raw_memory ($_[0], $_[0] + $_[1]);
}
sub grab_words {
    my ($ptr, $n) = @_;
    my @rv = ();
    while ($n > 0) {
	my $x = grab_word ($ptr);
	#if ($x & 0x8000) { $x -= 0x10000; }
	push @rv, $x;
	$ptr += 2;
	-- $n;
    }
    return bless \@rv, 'WORDS';
}
sub grab_dwords {
    my ($ptr, $n) = @_;
    my @rv = ();
    while ($n > 0) {
	my $x = grab_dword ($ptr);
	#if ($x & 0x8000) { $x -= 0x1000; }
	push @rv, $x;
	$ptr += 4;
	-- $n;
    }
    return bless \@rv, 'DWORDS';
}
sub grab_words_to_zero {
    my $ptr = $_[0];
    my @rv = ();
    for (;;) {
	my $tmp = grab_word ($ptr);
	last if ($tmp == 0);
	push @rv, $tmp;
	$ptr += 2;
    }
    return bless \@rv, 'WORDS';
    #return "bless [".join (", ", @rv). "], 'WORDS'";
}
sub grab_dwords_to_neg1 {
    my $ptr = $_[0];
    my @rv = ();
    for (;;) {
	my $tmp = grab_dword ($ptr);
	last if ($tmp == 0xffffffff);
	push @rv, $tmp;
	$ptr += 4;
    }
    push @rv, 0xffffffff;
    return bless \@rv, 'DWORDS';
}

sub grab_table_5c_member {
    my @rv = ();
    my $ptr = $_[0];
    for (my $i = 0; $i < 20; ++ $i) {
	push @rv, (grab_raw_memory_by ($ptr + 0x20 * $i, 0x18),
		   grab_string_from ($ptr + 0x20 * $i + 0x18),
		   grab_string_from ($ptr + 0x20 * $i + 0x1c));
    }
    return bless \@rv, 'TABLE_5C_MEMBER';
}
sub grab_table_5c {
    my $ptr = $_[0];
    my @rv = ();
    for (;;) {
	my $addr = grab_dword ($ptr);
	last if ($addr == 0);
	push @rv, grab_table_5c_member ($addr);
	$ptr += 4;
    }
    return bless \@rv, 'TABLE_5C';
}
sub grab_table_5c_from { return grab_table_5c (grab_dword($_[0])); }

sub grab_table_64_from { return grab_table_64 (grab_dword($_[0])); }
sub grab_table_64 {
    my $ptr = $_[0];
    my @rv = ();
    for (;;) {
	my $addr = grab_dword ($ptr);
	last if ($addr == 0);
	push @rv, grab_table_64_member ($addr, grab_dword($ptr + 4));
	$ptr += 8;
    }
    return bless \@rv, 'TABLE_64';
}
sub grab_table_64_member {
    my ($start, $members) = @_;
    my @rv = ();
    for (my $i = 0; $i < $members; ++ $i) {
	#print "At line $i of $members, grabbing string 
	push @rv, (grab_escaped_string_from ($start + 8 *$i),
		   grab_dword ($start + 8*$i + 4));
	#push @rv, (grab_string_from ($start + 8 *$i),
	#	   grab_dword ($start + 8*$i + 4));
    }
    return bless \@rv, 'TABLE_64_MEMBER';
}

sub comment { 
    #print "comment $_[0]\n";
    return bless [ "'".$_[0]."'" ], 'COMMENT';
}

sub grab_string_table_with_comment {
    my ($comment, $addr) = @_;
    my $st = grab_string_table_from ($addr);
    return (comment (sprintf ("string table %x - %s, length = 0x%x = %d",
			      $addr, $comment, scalar @$st, scalar @$st)),
	    $st);
}
sub grab_escaped_string_table_with_comment {
    my ($comment, $addr) = @_;
    my $st = grab_escaped_string_table_from ($addr);
    return (comment (sprintf ("string table %x - %s, length = 0x%x = %d",
			      $addr, $comment, scalar @$st, scalar @$st)),
	    $st);
}

my $base = bless [
    comment("raw_0x00"), 
    grab_raw_memory_by (grab_dword(0x00), 12), 
    comment ("dwords_0x04 ??"),
    grab_dwords_to_neg1 (grab_dword (0x04)), 
    comment ("string table 08 - section names"),
    #grab_string_table_from (0x08), 
    grab_escaped_string_table_from (0x08), 
    comment ("string table 0c - character names"),
    grab_string_table_from (0x0c), 
    comment ("string table 10 ??"),
    grab_string_table_from (0x10), 
    comment ("string table 14 ??"),
    grab_string_table_from (0x14), 
    comment ("string table 18 ??"),
    grab_string_table_from (0x18),
    comment ("string table 1c ??"),
    grab_string_table_from (0x1c),
    #comment ("string table 20 - script names ?"),
    #grab_string_table_from (0x20),
    grab_string_table_with_comment ("script names - files 0###", 0x20),
    grab_string_table_with_comment ("background images - files 1###", 0x24),
    grab_string_table_with_comment ("CGs - files 2###", 0x28),
    grab_string_table_with_comment ("Sprites - files 3###", 0x2c),
    grab_string_table_with_comment ("BGM - files 4###", 0x30),
    grab_string_table_with_comment ("SFX - files 5###", 0x34),
    #comment ("string table 38 - endings"),
    #grab_escaped_string_table_from (0x38),
    grab_escaped_string_table_with_comment ("endings", 0x38),
    comment ("raw 3c ?? - length 0x44 = 68"),
    grab_raw_memory_by (grab_dword (0x3c), 0x44),# 3c
    comment ("raw 40 ?? - length 0x1e7 = 487"),
    grab_raw_memory_by (grab_dword (0x40), 0x1e7),# 40
    comment ("raw 44 ?? - length 0x1d5 = 469"),
    grab_raw_memory_by (grab_dword (0x44), 0x1d5), # 44
    comment ("raw 48 ?? - length 0x27c = 636"),
    grab_raw_memory_by (grab_dword (0x48), 0x27c), # 48
    comment ("raw 4c ?? - length 0x40 = 64"),
    grab_raw_memory_by (grab_dword (0x4c), 0x40), # 4c
    comment ("raw 50 ?? - length 0x30 = 48"),
    grab_raw_memory_by (grab_dword (0x50), 0x30), # 50
    comment ("raw 54 ?? - null data ??"),
    grab_raw_memory_by (grab_dword (0x54), 2), # 54
    comment ("raw 58 ?? - length = 0x156 = 342"),
    grab_raw_memory_by (grab_dword (0x58), 0x156), # 58
    grab_table_5c_from (0x5c), # 5c 
    grab_jukebox_data (0x60),
    grab_table_64_from (0x64), # 64 
    grab_tips_data (0x68),
    comment ("raw 6c - tips ordering"),
    grab_raw_memory_by (grab_dword (0x6c), 0x6e), # 6c # Tips order?
    comment ("raw 70 - tips related?"),
    grab_raw_memory_by (grab_dword (0x70), 0x6e), # 70 # Tips related?
    comment ("raw 74 ?? - length 0x76b = 1899"),
    grab_raw_memory_by (grab_dword (0x74), 0x76b), # 74
    comment ("string table 78"),
    grab_string_table_from (0x78),
    ], 'BASE_DATA';

binmode STDOUT, ":utf8";
#dump_tree (0, grab_tips_data (0x68)); print ";\n";
print "sub get_data { return";
dump_tree (0, $base); 
print "; }\n1;\n";
#show_unused_data();


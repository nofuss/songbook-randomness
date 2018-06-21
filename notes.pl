#!/usr/bin/perl
use strict;
use warnings;

my @notes = ( 'C', 'C#', 'D', 'Eb', 'E', 'F', 'F#', 'G', 'Ab', 'A', 'Bb', 'B' );

print "\na random note:\n";
randomNote();

my $count = 10;

print "\n$count random notes:\n";
randomNotes($count);

print "\n$count unique random notes:\n";
uniqRandomNotes($count);


sub randomNote {
    print $notes[rand @notes] . "\n";
}

sub randomNotes {
    my $count = shift;
    die "note count must be greater than zero" unless $count > 0;
    for (1 .. $count) {
        print $notes[rand @notes] . "\n";
    }
}

sub uniqRandomNotes {
    my $count = shift;
    die "unique note count must be between one and " . @notes . "\n" unless $count > 0 and $count <= @notes;
    my @notesCopy = @notes;
    for (1 .. $count) {
        print splice(@notesCopy, rand @notesCopy, 1) . "\n";
    }
}


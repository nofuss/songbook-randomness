#!/usr/bin/perl
use strict;
use warnings;

my @chords = (
    'C',
    'Cm',
    'Db',
    'C#m',
    'D',
    'Dm',
    'Eb',
    'Ebm',
    'E',
    'Em',
    'F',
    'Fm',
    'F#',
    'F#m',
    'G',
    'Gm',
    'Ab',
    'G#m',
    'A',
    'Am',
    'Bb',
    'Bbm',
    'B',
    'Bm'
);

print "\na random chord:\n";
randomChord();

my $count = 10;

print "\n$count random chords:\n";
randomChords($count);

print "\n$count unique random chords:\n";
uniqRandomChords($count);


sub randomChord {
    print $chords[rand @chords] . "\n";
}

sub randomChords {
    my $count = shift;
    die "chord count must be greater than zero" unless $count > 0;
    for (1 .. $count) {
        print $chords[rand @chords] . "\n";
    }
}

sub uniqRandomChords {
    my $count = shift;
    die "unique chord count must be between one and " . @chords . "\n" unless $count > 0 and $count <= @chords;
    my @chordsCopy = @chords;
    for (1 .. $count) {
        print splice(@chordsCopy, rand @chordsCopy, 1) . "\n";
    }
}


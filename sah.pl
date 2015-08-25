#!/usr/bin/env perl
#sah.pl is a simple program created to show how $scalar, @arrays and %hash's work.

use strict;
use warnings;
use 5.10.0; # We will be using the smart match operator
 
my $scalar = 'hi';
my @array = qw(one two three);
my %hash = 
(
    hi  => 1,
    ho  => 2,
    he  => 3,
);
 
if ($scalar ~~ @array) { print "1\n"; } # Doesn't print; 'hi' isn't an element in @array
if ($scalar ~~ %hash)  { print "2\n"; } # Does print; 'hi' is a key in %hash
if (@array ~~ %hash)   { print "3\n"; } # Doesn't print; none of the elements of @array match a key in %hash

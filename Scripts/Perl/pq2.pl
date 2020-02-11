#!/usr/bin/perl
#Program that asks the user to enter a list of words. The list is than sorted and printed out
#Author: Geldi Omeri

use warnings;

#Asks the user to input several words
print "Please enter several words:\n";
$words = <STDIN>;
chomp $words;

#splitting the string into several elements for an array
@words = split / /, $words;

#Sorting the words the user inputted
@sorted = sort@words;

#printing out the sorted words
print "@sorted\n";

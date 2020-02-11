#!/usr/bin/perl
#Program that greets the user based on what time of day it is
#Author: Geldi Omeri

use warnings;

#created variable to hold the current hour in the day
$t = `date +%H`;

#prints a greeting for the morning if the time is morning
if($t <= 11 and $t >= 0){
	print "Good Morning\n";
}

#prints a greeting for the afternoon if the time is the afternoon
elsif($t <= 16 and $t >= 12){
	print "Good Afternoon\n";
}

#prints a greeting for the evening if the time is the evening
elsif($t <= 24 and $t >= 12){
	print "Good Evening\n";
}


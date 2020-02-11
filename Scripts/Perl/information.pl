#!/usr/bin/perl
#A program that greets the user. Prints the date and the time. Prints the name of the machine. Prints the anme and release of the OS. Prints the disk usage and prints the group ID.
#Author: Geldi Omeri

use warnings;

#gathered username of the current login and printed it to the user as a greeting
$username = getpwuid($<);
print "Hello $username\n";

#printing date and time to the user
print "\nThe date and time is: $date\n";
system("date");

#Printing the machine's name
$machine = `hostname`;
print "\nThe machine's name is $machine\n";

#Printing the name and release of the OS
print "\nThis is the Operating System on this machine:\n";
system("head -2 /etc/os-release");

#printing out the disk usage
print "\nDisk Usage:\n";
system("du -h");

#printing the group ID for the user
$Group = `id -g`;
print "\nYour Group ID: $Group\n";

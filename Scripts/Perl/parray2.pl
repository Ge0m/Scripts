#!/usr/bin/perl
#A program that counts the number of users using the bash shell and nologin shell, prints out the largest UID, displays all usernames where uid is less than 1000, and where they are equal to or greater than 2000 (sorted by username).
#Author: Geldi Omeri

use warnings;

#command executed to count the number of bash shell usernames and place it into a variable
$bucount=`cat /etc/passwd | grep "bash" | wc -l`;

#command counts number of nologin usernames and places the count into a variable
$nlucount=`cat /etc/passwd | grep "nologin" | wc -l`;

#printing out how many users of each shell there are
print "Number of Bash Shell Users: $bucount\n";
print "Number of Nologin Shell Users: $nlucount\n";

#command grabs all the uid numbers and places tham into an array
@uids=`cut -d: -f3 /etc/passwd`;

#initializing a variable
$uidn = 0;

#for loop that compares each elemnt of the array to each other to find the largest number
for $i (@uids){
	if ($uidn < $i){
		$uidn=$i;
	}
}

#printing out the largest uid number from the variable
print "Largest UID Number: $uidn\n";

#placed passwd file into an array
@plist=`cat /etc/passwd`;

#set up a header for neatness
print "All users with user id number under 1000:\n";

#for loop that goes through each line of the passwd file inside the plist array
for $p (@plist){
	
	#split the current line of the array into specific fields
	@fields=split /:/, $p;

	#placed the values of the username and uid into individual variables
	$pu=$fields[0];
	$pn=$fields[2];

	#if the uid number is less than 1000 than the username is displayed
	if ($pn < 1000){
		print "$pu\n";
	}

	#if the uid number is greater than 2000 add the related username to the lusers array
	if ($pn >= 2000){
		push(@lusers,$pu);
	}
}

#sorts the largeids array
sort(@lusers);

#print header for neatness
print "\nAll users with UID number over 2000:\n";

#print all elements in lusers array
print "@lusers\n";

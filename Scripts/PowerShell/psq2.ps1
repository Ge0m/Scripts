#Script that calculates the average performance score and prints out the members of the groups meeting the following criteria:
#Native language is english. Age is greater than 20. Both age over 20 and native language equals english. Performance score is greater than 70.
#Author: Geldi Omeri

#initializing the arrays to work with
$firstnames = @("Sarah", "Jareth", "Ludo", "Hoggle");
$lastnames = @("Williams", "King", "Beast", "Dwarf");
$ages = @(15, 39, 33, 43);
$nativelanguages = @("English", "English", "Romanian", "English");
$performancescores = @(85, 99, 35, 75); 

#foreach loop in order to gather the total performance score of all of them combined
foreach ($score in $performancescores){
	$total += $score
}

#performing the math to produce the average performance score
$average = $total / $performancescores.count

#displaying the average score to the user
write-host "The average performance score is $average"

#initializing hashs to be used in grouping members
$group1 = @{}
$group2 = @{}
$group3 = @{}
$group4 = @{}

#for loop to determine which members fit in each group and place them into their respective hash groups accordingly
for ($member=0; $member -le $firstnames.count; $member++){

	if ($nativelanguages[$member] -eq "English"){
		$group1.Add($firstnames[$member],$lastnames[$member])
	}	

	if ($ages[$member] -gt 20){
		$group2.Add($firstnames[$member],$lastnames[$member])
	}

	if ($ages[$member] -gt 20 -and $nativelanguages[$member] -eq "English"){
		$group3.Add($firstnames[$member],$lastnames[$member])
	}

	if ($performancescores[$member] -gt 70){
		$group4.Add($firstnames[$member],$lastnames[$member])
	}
}

#displaying all the groups and the members that are in them
write-host "`nMembers whose native language is English: "
$group1.GetEnumerator() | Sort-Object Name

write-host "`nMembers who are older than 20: "
$group2.GetEnumerator() | Sort-Object Name

write-host "`nMembers whose native language is English and are older than 20: "
$group3.GetEnumerator() | Sort-Object Name

write-host "`nMembers who have a performance score greater than 70: "
$group4.GetEnumerator() | Sort-Object Name
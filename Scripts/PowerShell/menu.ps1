#This program provides a menu from which the user can select options to get information on their system.
#Author: Geldi Omeri

#function that displays server name
function serverName{
	write-host "`nWindows Machine Name"
	write-host "---------------------------------------------------------------------" 
	hostname
	write-host "---------------------------------------------------------------------" 
	write-host "" 
}

#function that displays serverIP
function serverIP{
	write-host "`nIP Addresses"
	write-host "---------------------------------------------------------------------" 
	ipconfig | findstr "IPv4"
	write-host "---------------------------------------------------------------------" 
	write-host ""
}

#function that displays current users on the server
function currentUsers{
	write-host "`nCurrent Users"
	write-host "---------------------------------------------------------------------" 
	query user
	write-host "---------------------------------------------------------------------" 
	write-host "" 
}

#function that displays server disk information
function diskInfo{
	write-host "`nSystem Disk Information"
	write-host "---------------------------------------------------------------------" 
	get-disk
	write-host "---------------------------------------------------------------------" 
	write-host "" 
}

#function that displays system date
function systemDate{
	write-host "`nDate and Time"
	write-host "---------------------------------------------------------------------" 
	date
	write-host "---------------------------------------------------------------------" 
	write-host "" 
}

#function that displays all powershell get commands
function psGetCommands{
	write-host "`nGet Commands"
	write-host "---------------------------------------------------------------------" 
	get-command -All
	write-host "---------------------------------------------------------------------" 
	write-host ""
}

#initialize variable to be used in while loop
$a=0

#create a while loop that will let the user utilize the menu until they choose to finish
while ($a -ne 1)
{
	#displaying the menu options to the user
	write-host "
	1. Display the server name (your PC)

	2. Display the server IP address  

	3. Display all users currently on the server 

	4. Display the server disks information  

	5. Display the system date

	6. Display all PowerShell Get Commands

	7. Exit Program"        

	#Gather user selection
	$sel = read-host "`nEnter selection"

	#selecting the function using a switch statement
	switch ($sel)
	{
		1 {serverName}
		2 {serverIP}
		3 {currentUsers}
		4 {diskInfo}
		5 {systemDate}
		6 {psGetCommands}
		7 {$a=1}
		default {"`nInvalid input! Please select a valid option."}
	}
}
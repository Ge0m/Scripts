#GreetMe Script: This script asks the user for their name and displays the computer information to the user after a greeting.
#Author: Geldi Omeri

#gathering the users name
$name=read-host "Please Enter Your Name"
write-host ""

#greeting the user
write-host "Hello $name. How are you? Welcome to Windows PowerShell Scripting."
write-host "" 

#Waiting for user to press a key to continue displaying information
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
write-host "" 
write-host "" 

#displaying the date and time
write-host "Date and Time"
write-host "---------------------------------------------------------------------" 
date
write-host "" 

#Waiting for user to press a key to continue displaying information
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
write-host "" 
write-host "" 

#display system disk info
write-host "System Disk Information"
write-host "---------------------------------------------------------------------" 
get-disk
write-host "" 

#Waiting for user to press a key to continue displaying information
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
write-host "" 
write-host "" 

#display windows machine name
write-host "Windows Machine Name"
write-host "---------------------------------------------------------------------" 
hostname
write-host "" 

#Waiting for user to press a key to continue displaying information
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
write-host "" 
write-host "" 

#display name and release of the operating system
write-host "Operating System Name and Version"
write-host "---------------------------------------------------------------------" 
(Get-WMIObject win32_operatingsystem).name 
Get-CimInstance -ClassName Win32_OperatingSystem
write-host "" 

#Waiting for user to press a key to continue displaying information
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
write-host "" 
write-host "" 

#display all processes running on the system
write-host "Running Processes"
write-host "---------------------------------------------------------------------" 
get-process
write-host "" 

#Waiting for user to press a key to continue displaying information
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
write-host "" 
write-host "" 

#display the windows IP address
write-host "IP Addresses"
write-host "---------------------------------------------------------------------" 
ipconfig | findstr "IPv4"
write-host ""

#Waiting for user to press a key to continue displaying information
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
write-host "" 
write-host "" 

#display a goodbye message to the user
write-host "Goodbye $name. See you next time!"
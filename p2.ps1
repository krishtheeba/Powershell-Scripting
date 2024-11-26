<#
Task
====

Write powershell script

read a login name from STDIN
Test login name is root-----> not matched----> display "Invalid Login name
        |
read a shell name from stdin

test whether shell name is either psh (or) sh (or) bash // any one matched
								|
#>


$name = read-host "enter the login name"

if( $name -eq "root"){
	$var=read-host " Enter the shell name"
	
	if( $var -eq "psh" -or $var -eq "sh" -or $var -eq "bash"){
		write-host "Login name : $name `t Shell name :$var"
	}
	else{
		write-host "Invalid shell name"
	}
}
else{
	write-host " Sorry $name is not matched"
}
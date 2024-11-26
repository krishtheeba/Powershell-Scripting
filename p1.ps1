<#

task
----

write a powershell script

1. read login name from user
2. test login name  matches  with "root"  - condition1---> display invalid login name
                  |
	3. read a shell name
	4. test shell name matches as psh   - condition 2   ---> display  invalid shell name
                             |
			   display login name and shellname
			

#>


$name=read-host "Enter the Login name"

if( $name -ceq "root"){

	$var=read-host "Enter the shell name"
	if($var -eq "psh"){
		write-host " Login Name : $name `t Login Shell name:$var"
	}
	else{
		write-host " Invalid Shell Name"
	}
}
else{
	Write-host " Sorry $name is not Matched"
}


	

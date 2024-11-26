<#

task
-----
write a powershell script

read a shellname

test  
input shell is bash----------------> profile = "~/.bashrc"

input shell is sh ----------------> profile="~/.shrc"

input shell is psh ---------------> profile="$PSHOME/profile.ps1"

|
not matched ------> default profile ="C:/profile.ps1"
		default shellname ="sbin/nologin"

display Shell name and profile
#>

$var=read-host "Enter the shell Name"

if ($var -eq "bash"){
	$p="~/.bashrc"
}elseif($var -eq "sh"){
	$p="~/.shrc"
}elseif($var -eq "psh"){
	$p="`$PSHOME/profile.ps1"
}else{
	Write-host " Sorry $var shell is not matched"
	$p="C:/profile"
	$var="/sbin/nologin"
}

Write-host "Shell Name : $var `t Profile:$p"





















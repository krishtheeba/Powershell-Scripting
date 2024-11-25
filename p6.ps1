
$n=450

if($n -gt 500){
	write-host " True only"
}
else{
	write-host "False only"
}

$name="root"
if ( $name -eq "root"){
	write-host " login is success"
}
else{
	write-host "Login failed"
}

if((get-process).length  -lt 100){
	write-host " Total no. of current running process is less than 100"
}
else{
	write-host "No. of running process is greater than 100"
}


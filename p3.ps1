<#
Task
===

read a hostname from <stdin>
hostname is oracle
		|
		read a port number from <stdin>
			|
			matched in range( 501- 599)
					|-----> Hostname
					|-----> portnumber
#>


$h=read-host "Enter the Hostname"

if( $h -eq "oracle"){
	[int]$po=read-host "Enter the port number"
	
	if ( $po -lt 600 -and $po -gt  500){
		write-host " Hostname : $h"
		write-host " Port Number : $po"
	}
	else{
		write-host " Invalid port number"
	}
}
else{
	write-host " Invalid hostname"
}
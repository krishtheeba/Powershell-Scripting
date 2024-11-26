
<#
task
-----

write a power shell script 

declare and initialize a $pin = 1234

read a input pin from <STDIN>

compare input pin with $pin 
	|---------------------->pin matches   ex:  pin matched at 2 attempt
                                 |
				exit from loop

max input pin is 3----> pin is blocked

Enter a pin : 1234
Success- pin matched at 1 attempt
--------------------
Enter a pin: 3333
Enter a pin:1234
Success - pin matched at 2 Attempt
------------------------------
Enter a pin:2323
Enter a pin:543534
Enter a pin:332

pin is blocked

#>

$pin = 1234

$c=0
while($c -lt 3){

	[int]$p= read-host "Enter the Pin"
	$c++
	if($pin -eq $p){
		echo "Success- Pin Matched at $c attempt"
		break
	}
}
if ($pin -ne $p){
	echo "Sorry Your Pin is Blocked"
}



<#

Task
-----
write powershell script

read N value - int type

read M value - double type

read X value - string type

display both the input value and its datatype


`n   -> newline character
`t   -> tab character
#>


$n= read-host "Enter N value"
$m= read-host "Enter M value"
$x= read-host "Enter X value"

echo "Current Value and Datatype"
echo "n value  : $n`t Type :$($n.gettype().name)
m value  : $m`t Type :$($m.gettype().name)
x value  : $x`t Type :$($x.gettype().name)"               

<#
(cmdlet)   (or)   $(cmdlet)   (or)  cmdlet
#>


$n=[int]$n   # typecasting from string to int
$m=[double]$m    # typecasting from string to double

echo "Updated Value and Datatype"
echo "n value  : $n`t Type :$($n.gettype().name)
m value  : $m`t Type :$($m.gettype().name)
x value  : $x`t Type :$($x.gettype().name)"               






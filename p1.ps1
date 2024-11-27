<#

Task
=====
write a powershell script

given Array:
@("ram,sales,1000", "jack,prod,2000", "sam,hr,3000", "Vishnu,Prod,3000")


Display Emp name and Working department to <STDOUT>

Calculate the sum of cost of all emp's cost

Display the total cost to <STDOUT>


Note:- use split(",") 

#>


$emp=@("ram,sales,1000", "jack,prod,2000", "sam,hr,3000", "Vishnu,Prod,3000")

$total=0
foreach( $var in $emp){
	
	$n,$d,$c= $var.split(",")
	echo "Emp Name : $n `t Working Dept : $d"
	$total=$total + [int] $c
}

Write-Host " ==================================================================="
Write-Host "`t Total Emp's Cost : $total`t"
Write-host "==================================================================="



	



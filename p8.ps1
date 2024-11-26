<#
foreach ( $var in <collection--Array| hash| cmdlet result> ){
		....
}


#>

$c=0
foreach ($var in $(get-content "C:\users\theeba\day2\emp.csv")){

	$c++
	
	if($c -eq 3){
		break	
	}
	else{
		echo $var
	}
}
	



foreach( $v in get-content ".\emp.csv"){
	
	$s= $v.trim()
	$s1 = $s -split ","
	if ( $s1 -notcontains "sales" -or $s1 -notcontains "prod" ){
		echo $v >> D.txt
	}
}

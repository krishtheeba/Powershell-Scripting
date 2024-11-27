<#
Q3. Write a powershell script - display list of log files under your current working directory
     in below format.
	
	1.p1.log
	2.p2.log
	...
	10.temp.log

	Total no.of log files:10


#>


$c=0
foreach($v in (Get-ChildItem "C:\windows\*.log")){
  $c++
  Write-Output "$c $v"
}

echo "----`nTotal no.of log files:$c`n----"
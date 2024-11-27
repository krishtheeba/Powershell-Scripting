<#
 step 1 :create an empty array: $hosts=@()

 step 2 :using while loop - 5times
           read a hostname from <STDIN>
           add input hostname into existing array

 step 3 : display total no. of array elements

 step 4 : using foreach loop - display list of hostname

 step 5 : modify 1st index hostname     host01 <--> 127.0.0.1
 Step 6 : step 4 (updated hostname details)


#>

$my_hosts=@() # empty array
echo "Size:$($my_hosts.count)"
$c=0
while($c -lt 5){
    $v=Read-Host "Enter a hostname" # reading data from <STDIN>
    $my_hosts+=$v # $my_hosts=$my_hosts+$v append operation
    $c++
}
echo "List of host name details:-
--------------------------------------"
foreach($v in $my_hosts){
    echo $v
}
$my_hosts[1]="127.0.0.1" # updating existing array elements
echo "`nUpdated hostname details:-"
foreach($v in $my_hosts){
    echo $v
}


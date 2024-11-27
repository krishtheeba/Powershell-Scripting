
<#
 Q6. 
 step 1 :create an empty array: $hosts=@{}

 step 2 :using while loop - 5times
           read a hostname from <STDIN>
	    read a IPAddress from <Stdin>
           add input hostname into existing hash (  hostname as key, IpAddress as Value)

 step 3 : display total no. of elements

 step 4 : using foreach loop - display list of hostname (keys)

 step 5 : modify 'host01'  value  <--> 127.0.0.1
 Step 6 : step 4 (updated hostname details)

#>


$my_hosts=@{} # empty hash
echo "Size:$($my_hosts.count)"
$c=0
while($c -lt 5){
    $k=Read-Host "Enter a hostname" # reading data from <STDIN>
    $v= Read-Host "Enter a Ip Address" 
    $my_hosts.add($k,$v)  # add new data operation
    $c++
}
echo "List of host name details:-
--------------------------------------"
foreach($v in $my_hosts){
    echo $v
}
$key=Read-host " Enter the key to modify the value"
$value=Read-Host " Enter the Value to Update"
$my_hosts[$key]=$value # updating existing array elements
echo "`nUpdated hostname details:-"
foreach($v in $my_hosts){
    echo $v
}

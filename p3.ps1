# single line comment

<#   Multiline comment

Task
-----
script to
create related variables 
display login name, powershell version , current working directory date
           |
      whoami  (or) $env:username

#>


$name = $(whoami)

$v= $(get-host).version # (or) $v=(get-host).Version

$mycwd= $(get-location)

$d = $(get-date -Uformat %m-%d-%Y)

write-host "Login Name : $name"

write-output " Working Powershell version : $v"

write-host " Working Directory : $mycwd"

echo " Today : $d"
 
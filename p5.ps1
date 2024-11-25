<#
Task
-----
How to obtain the files under 'c:\windows\system32' whose size exceeds 20MB
#>

$largerFiles= $( $(Get-childitem "C:\windows\system32" )| where{ $_.length -gt 10MB})

$c = $largerFiles.count

Write-host "There are totally $c of Files over 10MB"

write-output " Files Over 10MB in c:\windows\system32 : " 

$largerFiles| select-object name,length,lastWriteTime | format-list  

for( $i=0 ; $i -lt 5 ; $i++)
{
	$var=read-host "Enter the text"
	
	#set-content './resultfile.txt' $var   # overwrites the existing content
	add-content './resultfile.txt' $var   # append 
}
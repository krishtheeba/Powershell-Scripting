<#
 Write a powershell script - display menu-driven program 
	
    ###############  SYSTEM INFO ####################################
    #								    #
    #   1.  List top 10 process - (sort process by memory usage)    #
    #   2.  List running service				    #
    #   3.  Total no.of alias 					    #
    #   4.  Display process details				    #
    #   5.  Display login name and login path			    #
    #								    #
    #################################################################
    
    Enter your Choice:__


#>

while(1){
echo "
    ###############  SYSTEM INFO ####################################
    #								    #
    #   1.  List top 10 process - (sort process by memory usage)    #
    #   2.  List running service				    #
    #   3.  Total no.of alias 					    #
    #   4.  Display process details				    #
    #   5.  Display login name and login path			    #
    #   6.  EXIT FROM MENU								    #
    #################################################################
    "
   [int]$choice=read-Host "Enter your choice"
	
   if($choice -eq 1){
		cls
		echo "Sorted processes by memory usage:-"
		echo "____________________________________"
		get-process|sort-object -property  WS|select-object -last 10
		echo "________________________________________________________"	
	
	}
   elseif($choice -eq 2){
	cls
	echo "______________________________________________"
	Get-Service|Where-Object {$_.status -eq "running"}
	echo "______________________________________________"
	echo "Total no.of running services:$((Get-Service|Where-Object {$_.status -eq "running"}).length)"
	echo "_______________________________________________"

   }
   elseif($choice -eq 3){
      cls
      $V=$((Get-Alias).length)
      echo "Total no.of alias:$V"
   }
   elseif($choice -eq 4){
		cls
		echo "Current process"
		get-process
   }
   elseif($choice -eq 5){
		cls
		echo "Login name:$(whoami)`t Login Path:$HOME"
   }
   elseif($choice -eq 6){echo "Thank You..";break}
   else{ echo "Sorry invalid choice" 
   }


}
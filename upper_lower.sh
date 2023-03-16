<<doc
Name : Suraj Roy
Date : 26-04-2022
Description : Shell script to convert string lower to upper and upper to lower
Sample input : /upper_lower.sh file.txt
Sample Output : 
1 – Lower to upper
2 – Upper to lower
Please select option : 1
WHAT IS TIME?
EARTH IS CIRCLE
RESPECT
doc


#!/bin/bash

if [ $# -eq 0 ]                          #validate cla
then
       echo Error : Please pass the file name through command line. #display error
else
       if [ -f $1 ]                                                   #checking given file is present or not
       then
	      if [ -s $1 ]
	      then
		    
		     echo -e "1 – Lower to upper\n2 – Upper to lower"      #display menu
		    
		     read -p "Please select option : " c                   #user input
		    
		     case $c in		    #using case statement
			    1)
				   cat $1 | tr [:lower:] [:upper:]     #convert file lower to upper
				   ;;
		
			    2)
				   cat $1 | tr [:upper:] [:lower:]    #convert file upper to lower
				   ;;
			    *)
		
				   echo Invalid choice
		     esac
	     
	      else
		     echo Error: No contents inside the file.
	      fi
      
       else
	      echo Error: No file exist.             #display error
       fi

fi

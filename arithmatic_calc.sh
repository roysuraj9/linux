<<doc
Name : Suraj Roy
Date : 21-04-2022
Description : 
Sample Input :./arithmatic_calc.sh 5 / 2
Sample Output :5 / 2 = 2.50
doc

#!/bin/bash


if [ $# -eq 3 ]                                                     # check number of argument is three
then
       case $2 in                                                   #using case statement
	
	      +)
		    echo $1 $2 $3 =  `echo "$1 + $3" | bc`            # adding arguments and display output
		     ;;

	      -)
		    echo $1 $2 $3 = ` echo "$1 - $3" | bc`              # substracting arguments and display output
		     ;;

	      x)
		    echo $1 $2 $3 =  `echo "$1 * $3" | bc`               #multipling arguments and display output
		     ;;

	      /)
		    echo $1 $2 $3 = ` echo "scale=2; $1 / $3" | bc`      #dividing argumunts and display output
		     ;;
		     
	      *)                                                         #default
		     echo Invalid option
       esac


elif [ $# -eq 0 ]                                                     #if no pass arguments in command line
 then   
   	echo Error : Please pass the arguments through command line.  # display error 
        echo Usage:./arithmatic_calc.sh 2.3 + 6.7


 else                                                                #if pass arguments is not equal to 3
       echo Error : Please pass 3 arguments.                         #display error 
       echo Usage:./arithmatic_calc.sh 2.3 + 6.7
fi

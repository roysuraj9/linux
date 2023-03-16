<<doc
Name : Suraj Roy
Date : 01-05-2022
Description : Use a recursive function to print each argument passed to the function
Sample Input : ./recursion.sh who are you?
Sample Output :
who
are
you?
doc

#!/bin/bash
function print                            #function
{
       
       if [ $# -ne 0 ]                     #condition for function call
       then

	      arr=($@)                     #store update element in array
	      echo $1                      #display first element of array
	      arr=(${arr[@]:1})            #remove first element of array 
	      print ${arr[@]}              #call function
       fi

}

if [ $# -eq 0 ]                             #validate cla
then
       echo Error : Pass the arguments through command line.
else
       arr=($@)                            #store cla element in array
       print ${arr[@]}                     #function name
fi

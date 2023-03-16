<<doc
Name : Suraj Roy
Date : 21-04-2022
description : Write a script to print the length of each and every string using arrays
Sample Input : ./string_length.sh do not waste time 
Sample Output :
Length of string (do) - 2
Length of string (not) - 3
Length of string (waste) - 5
Length of string (time) - 4
doc

#!/bin/bash

arr=($@)                                                            #store command line agrument in array

if [ $# -eq 0 ]                                                      #validate the command line 
then
       echo Error : Please pass the arguments through command-line. # display error

else
       
       for i in `seq 0 $(($# - 1))`                                 #take array element one by one
do
       echo Length of string '('${arr[$i]}')' - ${#arr[$i]}         #display output
done
fi

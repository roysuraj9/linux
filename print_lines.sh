<<doc
Name : Suraj Roy
Date : 23-04-2022
Description : Write script to print contents of file from given line number to next given number of lines.
Sample Input : ./print_lines.sh 5 3 myfile.txt
Sample Output :
line number 5
line number 6
line number 7
doc

#!/bin/bash
if [ $# -lt 3 ]                                                     #validate command line agrument
then
       echo Error: arguments missing! 
echo Usage: ./file_filter.sh start_line upto_line filename
echo For eg. ./file_filter.sh 5 5 '<file>'
                                                                     

elif [ $# -eq 3 ]                                                    #check cla is equal to 3
then
     
       if [ `wc -l < $3` -gt `expr $1 + $2` ]                        #verify line of file
       then 
	      echo "`tail +$1 $3 | head -$2`"                        #display output lines
      
       else
	      echo Error: data.txt is having only 10 lines. file should have atleast 14 lines #display error 
       fi
fi

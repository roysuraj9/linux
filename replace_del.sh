<<doc
Name : Suraj Roy
Date : 02-05-2022
Description : Write a script to replace 20% lines in a C file randomly and replace it with the pattern
Sample Input : ./replace_DEL.sh main.c
Sample Output :
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
doc


#!/bin/bash

if [ $# -eq 0 ]                                                       #validating cla
then
       echo Error : Please pass the file name through command line.   #error

else
       if [ -f $1 ]                                                   #checking it is file
       then

	      if [ -s $1 ]                                            #checking file have content
	      then

		     line=`wc -l < $1`                                #number of line present in file
		     p=`echo "$line * 20 / 100" | bc`                 #20 % of file
		     arr=(`shuf -i 1-$line | head -$p`)               #generating ramdom line number

			    for i in ${arr[@]}
			    do
				   sed -i ''$i's/^.*$/<-----------Deleted------------>/' $1  #replace line content with delete
			    done
		     else
			    echo Error : main2.c is empty file. So can’t replace the string.   #error no content
	      fi
       else
	      echo Error : No such a file.                                                      #such file not present
       fi
fi

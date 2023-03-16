<<doc
Name : Suraj Roy
Date : 26-04-2022
Description : print contents of a directory without ls command
Sample Input : ./output_ls.sh
Sample Output : Assignments Classwork
doc


#!/bin/bash

if [ $# -eq 0 ]      #validate cla
then
       echo *        #display current working directory contents
else
       for i in $@   
       do
	      if [ -d $1 ]   #checking is input dirtory is present
	      then

		     cd $i       #move to input directory
		     echo `pwd`  #display directory path
		     echo *      #display directory contents
	      
	      else
		     echo output_ls.sh: Cannot access ‘$i’ : No such a file or directory. #if directory is not present
	      fi
       done
       
fi

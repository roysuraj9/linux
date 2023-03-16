<<doc
Name : Suraj Roy
Date :27-04-2022
Description : A script to delete empty lines from a file
Sample Input : /delete_empty_lines.sh file.txt
Sample Output :
Empty lines are deleted
hi
hello
world
doc
#!/bin/bash

if [ $# -eq 0 ] #validating cla 
then
       echo Error: Please pass the file name through command line. #display error
else
       if [ -s $1 ]                                # checking file have contents
       then
	      echo Empty lines are deleted
	      sed -i '/^[[:space:]]*$/d' $1        #remove empty line by using sed
	      cat $1                               #display contents
       else
	      echo NO contents in file
       fi
fi

<<doc
Name : Suraj Roy
Date : 28-04-2022
Description : Write a script to determine whether a given file system or mount point is mounted
Sample Input : ./mounted_fs.sh /dev/nvme0n1p7
Sample Output : File-system /dev/nvme0n1p7 is mounted on / and it is having 28% used space with 38012692 KB free. 
doc
#!/bin/bash

file=(`df | cut -d " " -f1`)                  #storing filesystemin array from df by use cut commmand 

avail=(`df | tr -s " " | cut -d " " -f4`)      #storing avail space in array from df by use cut commmand

use=(`df | tr -s " " | cut -d " " -f5`)        #storing use% in array from df by use cut commmand

mount=(`df | tr -s " " | cut -d " " -f6`)      #storing mounted on in array from df by use cut commmand


if [ $# -eq 0 ]                                #validating cla
then
       echo Error : Please pass the name of the file-system through command line.

else
      
       flag=0                                   #use flag for terminate for loop
      
       for i in `seq 1 $((${#file[@]} - 1))`    #use for loop
       do
	     
	      if [ ${file[$i]} = $1 ]         #comparing string 
	      then
		     echo File-system $1 is mounted on ${mount[$i]}  and it is having ${use[$i]} used space with ${avail[$i]} KB free. #display output
		     flag=1
	      fi
       done
       
       if [ $flag -eq 0 ]                                           #check flag value
       then
	     echo $1 is not mounted.  #display error if not mounted
       fi
fi

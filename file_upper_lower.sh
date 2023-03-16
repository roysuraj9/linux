<<doc
Name : Suraj Roy
Date : 25-04-2022
Description : Write a script to rename a file/directory replaced by lower/upper case letters
Sample input : /file_upper_lower.sh
Sample Output : 
Files are rename in lowercase and directories are renamed in upper case
file.txt myfile007.txt myscript.sh DIR/ ASSIGN1/ NEWFOLDER/
doc

#!/bin/bash


for i in `ls`
do
       if [ -f $i ]     #checking file is present or not
       then
	      new=`echo $i | tr [:upper:] [:lower:]`  #convert upper case to lower case of file name
	      
	      if [ $i != $new ]                      #check new name not equal old name
	      then
		     mv $i $new                      #renaming
	      
	      fi
       fi

       
       if [ -d $i ]                                    #checking directory is present or not
       then
	      new=`echo $i | tr [:lower:] [:upper:]`  #convert lower case to upper case of directory name
	      
	      if [ $i != $new ]                        #check new name not equal old name  
	      then
	
		     mv $i $new                       #renaming
	      fi
       fi

done
echo Files are rename in lowercase and directories are renamed in upper case `ls` #display output after change

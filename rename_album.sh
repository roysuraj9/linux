<<doc
Name : Suraj Roy
Date : 26-04-2022
Description : Given album name and corresponding directory, this scripts renames the jpg files with new name passed through command line
Sample Input : ./rename_album.sh day_out
Sample Output:
All .jpg files in current directory is renamed as
day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg
doc


#!/bin/bash
arr=(`ls *.jpg`)                                                                #storing all .jpg in array
prefix=$1                                                                       #initailize prefix cla
a=".jpg"                                                                        #initailize a with .jpg
if [ $# -eq 0 ]                                                                 #validating cla
then
       echo Error : Please pass the prefix name through command line.           #display error
else
       for i in  ${arr[@]}                                                       #for loop to get array element
       do
	      no=`echo $i | tr -d -c [:digit:]`                                  #remove old prefix of jpg to get digit
	      new=`echo $prefix$no$a`                                            #join new prefix with old digit
	      mv $i $new                                                         #rename old jpg to new jpg
       done
       echo -e "All .jpg files in current directory is renamed as\n"`(ls *.jpg)` #displaying all rename jpg
fi

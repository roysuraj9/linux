<<doc
Name : Suraj Roy
Date : 01-05-2022
Description : For each directory in the $PATH, display the number of executable files in that directory
Sample Input : ./executable_path.sh
Sample Output:
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445

doc
#!/bin/bash
arr=(`printenv PATH | tr ":" " "`)                  #storing path in array
total=0                                               #initailize totol

for i in ${arr[@]}                                    
do
       if [ -d $i ]                                   #check for directory
       then
	      
	      arr1=(`ls $i`)                        #storing content of directory
	      echo Current dir: $i
	      count=0                               #initailize count
	      
	      for j in ${arr1[@]}
	      do
		     
		     if [ -f -a -x  ]             #check the file and it is executable
		     then

			    count=`expr $count + 1`  #increment count value by 1

		     fi
	      done
       fi
       
       echo  current count: $count                          #display count
       total=`expr $count + $total`         #add all the file of different directory
done
echo Total - $total                         #total number of executable file in $PATH

<<doc
Name : Suraj Roy
Date : 01-05-2022
Description : Display the longest and shortest user-names on the system
Sample Input : ./largest_username.sh 
Sample Output : 
The Longest Name is: gnome-initial-setup
The Shortest Name is: lp

doc
#!/bin/bash
arr=(`cat /etc/passwd | cut -d ":" -f1`)  #store username in an array

shortest=${arr[0]}                       #initailize first as shortest
longest=${arr[0]}                        #initailize first as longest

for i in ${arr[@]}
do
   
       if [ ${#longest} -lt ${#i} ]      #compare character size  
       then
	      longest=$i                 #replace the longest
       fi

   
       if [ ${#shortest} -gt ${#i} ]     #compare character size
       then
	 
	     shortest=$i                 #replace the shortest
       fi
done
echo -e "The Longest Name is: $longest\nThe Shortest Name is: $shortest"    #display output

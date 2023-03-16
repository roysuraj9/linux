#!/bin/bash
arr=(`cat /etc/passwd | cut -d ":" -f3`)
echo ${arr[@]}
if [ $# -eq 2 ]
then
       if [ $1 -lt $2 ]
       then
	      count=0
	      for i in ${arr[@]}
	      do
		     if [ $i -ge $1 -a $i -lt $2  ]
		     then
			  echo $i
			  count=`expr $count + 1`
		     fi
	     
	      done
		   
	    echo Total count of user ID between $1 to $2 is: $count
       else
	      echo Error : Invalid range. Please enter the valid range through CL.
       fi
else
       echo -e "Error : Please pass 2 arguments through CL.\nUsage : ./user_ids.sh 100 200"
fi

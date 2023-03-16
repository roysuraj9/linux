<<doc
Name : Suraj Roy
Date : 23-04-2022
Description : Write a script to sort a given number in ascending or descending order
Sample Input : ./sorting.sh -a 5 4 6 2 3 8 9 7 1
Sample Output: Ascending order of array is 1 2 3 4 5 6 7 8 9
doc


#!/bin/bash

arr=($@)

if [ $# -eq 0 ]
then
       echo Error : Please pass the argument through command line.
       echo Usage : ./sorting -a/-d 4 23 5 6 3

elif [ $# -gt 0 ]
then
       case $1 in
	      -a)
		     for i in `seq 1 $(($# - 1))`
		     do
			    for j in `seq 1 $(($# - 2))`
			    do
				   if [ ${arr[$j]} -gt ${arr[$j + 1]} ]
				   then
					  temp=${arr[$j]}
					  arr[$j]=${arr[$j + 1]}
					  arr[$j + 1]=$temp
				   fi
			    done
		     done

		     echo -n "Ascending order of array is" 
		     for i in `seq 1 $(($# - 1))`
		     do
			    echo -n "${arr[$i]}"
		     done
		     echo
		     ;;
	      -d)
		      for i in `seq 1 $(($# - 1))`
                     do
                            for j in `seq 1 $(($# - 2))`
                            do
                                   if [ ${arr[$j]} -lt ${arr[$j + 1]} ]
                                   then
                                          temp=${arr[$j]}
                                          arr[$j]=${arr[$j + 1]}
                                          arr[$j + 1]=$temp
                                   fi
                            done
                     done

                     for i in `seq 1 $(($# -1))`
                     do
                            echo Descending order of array is -n "${arr[$i]} "
                     done
                     echo
                     ;;
	      *)
		     echo Error : Please pass the choice.
                     echo Usage : ./sorting -a/-d 4 23 5 6 3
       esac
fi

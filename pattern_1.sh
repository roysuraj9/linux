<<doc
Name : Suraj Roy
Date : 15-04-2022
Description : Read 'n' and generate a pattern( number increments from left to right)
Sample Input : n=5
Sample Output:
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
doc


#!/bin/bash
read -p "Enter a number : " n                 #reading input from user
for row in `seq $n`                           #outer loop
do

       for col in `seq $row`                  #inner loop
       do
	      echo -n "$col "                 #print pattern without changing line
       done

       echo                                   #print new line
done

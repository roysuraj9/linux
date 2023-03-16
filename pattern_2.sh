<<doc
Name : Suraj Roy
Date : 15-04-2022
Description : Read 'n' and generate a pattern(number increasing from Top to bottom)
Sample Input : n=4
Sample Output:
1
2 3
4 5 6
7 8 9 10
doc
 

#!/bin/bash

read -p "Enter a number : " n              #reading input from user       

count=1                                    #initailization

for row in `seq $n`                        #inner loop
do

       for col in `seq $row`               #outer loop
       do
  echo -n "$count "                        #print pattern without changing line

  count=`expr $count + 1`                  #increement count value
done 

      echo                                 #print new line
done

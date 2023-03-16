<<doc
Name : Suraj Roy
Date : 25-04-2022
Description : Write a script to perform arithmetic operation on digits of a given number
Sample Input : /operator_dependent.sh 1234+
Sample Output : Sum of digits = 10
doc


#!/bin/bash

var=$1                                                     #storing cla

op=`echo ${1: -1}`                                          #seperating operator


if [ $# -eq 0 ]                                              #validating command line
then
       echo -e "Error : Please pass the arguments through CL. \nUsage : ./operator_dependent.sh 2345+"  #display error


else
case $op in                                        #using case statement
       +)
	      sum=0                                                       #initailize
	      for i in `seq 0 $((${#var}-2))`
	      do
		     sum=`expr ${var:$i:1} + $sum`      #perform addition
		     
	      done
	      echo Sum of digits = $sum                     #display sum
	      ;;

       -)
	      sub=${var:0:1}                             #initailize
	      for i in `seq 1 $((${#var}-2))`                         #perform substraction
	      do
		     sub=`expr $sub - ${var:$i:1}`
	      done
	      echo Subtraction of digits = $sub            #display result
	      ;;

       x)
	      pro=1                                                       #initailize
	      for i in `seq 0 $((${#var}-2))`
	      do
		     pro=`expr ${var:$i:1} \* $pro`          #perform multiplication
	      done
	      echo Multiplication of digits = $pro            #display result
	      ;;

       /)
	      div=${var:0:1}                                                       #initailize
	      for i in `seq 1 $((${#var}-2))`
	      do
		     div=`echo "scale=2; $div / ${var:$i:1}" | bc`      #perform division
	      done
	      echo Division of digits = $div                        #display result
	      ;;

       *)
	      echo Error: Operator missing or invalid operator, please pass operator as last digit '('+,-,x,/')'       #display error
esac
fi

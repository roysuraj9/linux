<<doc
Name : Suraj Roy
Date : 19-04-2022
Description : Write a script to print chess board
doc



#!/bin/bash

for row in `seq 8`                                     #outer loop of 8 rows
do

       for col in `seq 8`                              #inner loop of 8 columns
       do
	     
	      if [ $(((row + col) % 2)) -eq 0  ]       #condition check
	      then
		     echo -e -n "\e[47m" " "           #print white box pattern

	      else
		     echo -e -n "\e[40m" " "           #print black box pattern

	      fi
       done

       echo -e -n "\e[0m"""                            #print normal color
       
       echo                                            #print new line

done

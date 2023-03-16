<<doc
Name : Suraj Roy
Date : 27-04-2022
Description : Write script called say_hello, which will print greetings based on time
Sample Input :
Sample Output:
Good Noon user, Have nice day!
This is Tuesday 26 in April of 2022 (02:22:09 PM)
doc

#!/bin/bash

d=`date +%c`
h=`date +%H`
                               #cutting information for date command
day=`echo $d | cut -d " " -f1`
date=`echo $d | cut -d " " -f2`
month=`echo $d | cut -d " " -f3`
year=`echo $d | cut -d " " -f4`
time=`echo $d | cut -d " " -f5`
st=`echo $d | cut -d " " -f6`

name=`whoami`                   #take username

                             #checking condition with respect to hour and display output
if [ $h -gt 5 -a $h -le 12 ]
then
       echo -n "Good Morning"

elif [ $h -gt 12 -a $h -le 14 ]
then
       echo -n "Good Noon"

elif [ $h -gt 14 -a $h -le 17 ]
then
       echo -n "Good Afternoon"

elif [ $h -gt 17 -a $h -le 21 ]
then
       echo -n "Good Evening"

else
       echo -n "Good Night"
fi
echo " $name, Have nice day!.This is $day $date in $month of $year ($time $st)" | tr "." "\n"   #display output

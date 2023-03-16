<<doc
Name : Suraj Roy
Date : 25-04-2022
Description : A script to print system information using commands
Sample Input : 2
Sample Output :
./system_info.sh
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process.
Enter the choice : 2
Your shell directory is /bin/bash
doc


#!/bin/bash

choice=y                           #initailize choice to y

while [ $choice = 'y' -o $choice = Y ]   #checking choice input
do
                                         #display menu
       echo -e "1. Currently logged users\n2. Your shell directory\n3. Home directory\n4. OS name & version\n5. Current working directory\n6. Number of users logged in\n7. Show all available shells in your system\n8. Hard disk information\n9. CPU information.\n10. Memory Informations\n11. File system information.\n12. Currently running process."
       read -p "Enter the choice : " c          #user input
       case $c in                               #using case statement and display valid output 
	      1)
		     echo Currently logged users is `whoami`
		     ;;
	      
	      2)
		     echo Your shell directory is $SHELL
		     ;;

       	      3)
		     echo Home directory is $HOME
		     ;;
      
	      4)
		     echo "OS name & version" `uname -a`
		     ;;
	 
	      5)
		     echo Current working directory `pwd`
		     ;;
	      
	      6)
		     echo Number of users logged in `who -q`
		     ;;

	      7)
		     echo Show all available shells in your system `cat /etc/shells`
		     ;;
	      
	      8)
		     echo Hard disk information `lshw`
		     ;;

	      9)
		     echo CPU information `lscpu`
		     ;;
	      
	      10)
		     echo Memory Informations `cat /proc/meminfo`
		     ;;
	      
	      11)
		     echo File system information `df`
		     ;;
	     
	      12)
		     echo Currently running process `ps`
		     ;;
	     
	      *)
		     echo Error : Invalid option, please enter valid option
       esac
       
       read -p "Do you want to continue (y/n) ?" choice   #take input from user to continue or not
done

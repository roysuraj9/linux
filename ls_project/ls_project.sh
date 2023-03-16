<<doc
NAme : Suraj Roy
Date : 11-05 2022
Description : LS project
doc

#!/bin/bash
echo -e "\e[1mWelcome\e\n[0m"
echo -e "1. Sign Up\n2. Sign In\n3. Exit"
read -p "Enter the choice: " z
case $z in                                                                               #sign up 
       1)
	      read -p "Enter the Username  " name
	      flag=1
	      user_name=(`cat user.csv`)
	      user_len=${#user_name[@]}
	      
	      for i in `seq 0  $(($user_len -1))`
	      do
		     if [ $name = ${user_name[$i]} ]                                    #checking user already or not
		     then
			    flag=0
			    break
		     else
			    flag=1
		     fi
	      done
	      if [ $flag = 1 ]
	      then
		     echo $name >> user.csv                                             #append new user name in .csv and take password
		      echo Enter the password
		      read -s password1
       		      echo  Confirm the password
		      read -s password2

	      else
		     echo username is already present
	      fi


	      if [ $password1 = $password2 ]                                           #append password in password.csv
	      then
		     echo $password2 >> password.csv
	      else
		     echo Password is not matched please enter the correct password
	      fi


	      ;;
       
       
       2)                                                                              #sign in
	      read -p "Enter the Username  " name
	      flag=1                                                                   #store username and password in array
	      user_name=(`cat user.csv`)
	      user_len=${#user_name[@]}
	      password=(`cat password.csv`)

	      for i in `seq 0 $((user_len - 1))`
	      do
		     if [ $name = ${user_name[$i]} ]                                 #matching username
		     then
			    echo username is matched
			    echo enter the password
			    read -s password1                                       #read password and check password is same

			    if [ $password1 = ${password[$i]} ]
			    then
				   echo -e "password is matched\nSign in is completed\n"
				   echo -e "1. Take Test\n2. Exit"                        #display menu
				   read  q
				   clear

				   case $q in
					  1)
						 for i in `seq 5 5 25`
						 do
							echo -e "\e[1mWelcome to Test `date`\e\n[0m"
							
							cat questions.txt | head -$i | tail -5          #display 5 lines from questions.txt
						

							for j in `seq 10 -1 1`                           #use for loop for countdown time
							do
							echo -e "\r Enter the choice: $j \c" 
							read -t 1 option                                 #time for answer

							if  [ -n "$option" ]                              #check option is non empty
							then
							       break
							else
							       option=e
							fi
						        done
						 echo $option >> useranswer.txt                          #appending useranswer in new .txt
						 clear
					         done
					  
						 clear 


					  
						 echo -e "\e[1m\e[34mRESULT\e\e[0m\n"                             #result
						 user_ans=(`cat useranswer.txt`)
					         anskey=(`cat answerkey.txt`)
					         user_count=${#user_ans[@]}
					         count=0
						 
						 for i in `seq 0 $(($user_count - 1))`
					         do
							if [ ${user_ans[$i]} = ${anskey[$i]} ]                    #comparing user answer to correct answer
							then
							       echo -e "\e[32mcorrect\e[0m" >> result.txt
							       count=$(($count + 1))
						 
							elif [ ${user_ans[$i]} = e ]
						 	then
								echo -e "\e[33mtimeout\e[0m" >> result.txt                                  #timeout
						 	
							 else
								echo -e "\e[31mwrong_answer\e[0m""\e[32m${anskey[$i]}\e[0m" >> result.txt   #wrong answer
							
							 fi
					 	 done
						 
						 
						 
						 k=0
					  	 result=(`cat result.txt`)                                            #display  result on screen
					  	 for i in `seq 5 5 25`
					  	 do
							cat questions.txt | head -$i | tail -5
						        echo ${result[$k]}
						       	k=$(($k + 1))
					  	 done
						 echo "Total Correct answer is : " $count                             #display score
						 
						 
						 rm useranswer.txt                                                     #remove both useranswer and result .txt
					  	 rm result.txt
						 ;;
					  
					  2)
						 exit                                                            #exit from test menu
						 ;;
					  *)
						 echo Invalid option
				   esac
			    
			    else
				   echo Please enter the correct password
			    fi
		     fi
	      done

	      ;;
       
       
       3)
       	      exit                                                                                            #exit from main menu

	      ;;
     *)
	    echo Invalid option try again
esac

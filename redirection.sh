<<doc
Name : Suraj Roy
Date : 28-04-2022
Description : Use pipes or redirection to create an infinite feedback loop. 
Sample Input : ./redirection.sh
Sample Output : 
hi
hello
hi
hello
hi
hello
hi
.
.
.
.

doc
#!/bin/bash

touch time.txt                            #making new file
echo -e "hi\nhello\nto" > time.txt        #add content in file

tail -f time.txt >> time.txt | tail -f time.txt   #append content of file into file and follow it output too

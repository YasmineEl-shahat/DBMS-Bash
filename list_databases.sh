#!/bin/bash


if [ -d ~/DBMS-Bash/Databases ]
then
   
     cd ~/DBMS-Bash/Databases
     printf "\nAll DataBases are : \n"

     #List all Databases
     for i in $(ls -d *); 
     do
      echo ${i};
     done
     
     
    # printf "\nGo back to the main menu to select another option\n"
 
     #source ~/DBMS-Bash/main-menu.sh

else

	printf "\nYour DataBase Engin isn't initialized ,, please choose the first option:\n"
         source ~/DBMS-Bash/main-menu.sh


    
  
fi


#!/bin/bash

#path_of_dataBase=~/DBMS_Bash/Databases


#Check if the DataBase Engin is initialized

if [ -d ~/DBMS-Bash/Databases ]
then

     cd ~/DBMS-Bash/Databases


    arr_dataBases=($(ls))

    #check if there are any dataBases

    if [[ ${#arr_dataBases[@]} > 0 ]]
    then
        
       printf "\nAll DataBases:\n"

       #Display all DataBases
       for i in $(ls -d *); 
       do
         echo ${i}; 
       done

        printf "\nEnter the dataBase_name that you want to drop ?\n"
        read dataBase_name

        #check if the dataBase_dataBase_name Directory exist
        if [ -d "$dataBase_name" ]
        then
        
            rm -r "$dataBase_name"

            printf "\nYour DataBase has deleted\n"
	    printf  "Go back to menu\n"

             source ~/DBMS-Bash/main-menu.sh


        else
            
            printf "\nThis dataBase doesn't exist\n"

            printf  "Go back to menu\n" 

             source ~/DBMS-Bash/main-menu.sh


        fi

    else
        
        printf "\nThere is no databases ,, please create database first"
         source ~/DBMS-Bash/main-menu.sh


    fi
    
else

	printf "\nYour DataBase Engin isn't initialized:\n"
         source ~/DBMS-Bash/main-menu.sh

fi

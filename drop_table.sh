#!/bin/bash

    arr_tables=($(ls))

    #check if there are any tables

    if [[ ${#arr_tables[@]} > 0 ]]
    then

       printf "\nAll Tables:\n"

       #Display all tabless
       for i in $(ls -f *);
       do
         echo ${i};
       done

        printf "\nEnter the table name that you want to drop ?\n"
        read table_name

        #check if the table name file exist
        if [ -f "$table_name" ]
        then

            rm -r "$table_name"

            printf "\nYour table is deleted\n"
	      source ~/DBMS-Bash/table-menu.sh

	     else

            printf "\nThis table doesn't exist\n"

            printf  "Go back to menu\n"

             source ~/DBMS-Bash/table-menu.sh


        fi

    else

        printf "\nThis DataBase  is empty ,, please create table first"
         printf  "Go back to menu\n"

         source ~/DBMS-Bash/table-menu.sh


    fi


    
                                                           




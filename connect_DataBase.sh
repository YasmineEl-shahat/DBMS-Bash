#!/bin/bash

    #list all dataBases if exist
    sourse ~/DBMS-Bash/list_DataBases.sh

    printf "\nEnter dataBase_name ?\n"
    read dataBase_name
    printf "\n"
    cd ~/DBMS-Bash/Databases
    if [ -d "$dataBase_name" ]
    then
	  source ~/DBMS-Bash/table-menu.sh $dataBase_name
    else
        printf "\nThis dataBase doesn't exist\n"

        printf  "back to menu\n"

        source ~/DBMS-Bash/main-menu.sh

    fi


#!/bin/bash

connect_dataBase(){

        select choise in "Create Table" "Delete Table" "update Table"
          do

          case $choise in

               "Create Table")

                              source ~/DBMS-Bash/create_Table.sh  $dataBase_name;;

               "Delete Table")

                              source ~/DBMS-Bash/drop_table.sh;;

              "update Table")

                              source ~/DBMS-Bash/update_Table.sh;;

                              * )
                              printf "\nPlease choose a correct option\n"
          esac

          done

}


    #list all dataBases if exist
    sourse ~/DBMS-Bash/list_DataBases.sh

    printf "\nEnter dataBase_name ?\n"
    read dataBase_name
    printf "\n"
    cd ~/DBMS-Bash/Databases
    if [ -d "$dataBase_name" ]
    then
        connect_dataBase
    else
        printf "\nThis dataBase doesn't exist\n"

        printf  "back to menu\n"

        source ~/DBMS-Bash/main-menu.sh

    fi

#!/bin/bash

connect_dataBase(){

        select choise in "Create Table" "Delete Table" "modify on Table"
          do

          case $choise in

               "Create Table")

                              source ./create_Table.sh  $dataBase_name;;

               "Delete Table")

                              source ./delete_Table.sh;;

              "update Table")

                              source ./update_Table.sh;;

                              * )
                              printf "\nPlease choose a correct option\n"
          esac

          done

}


    #list all dataBases if exist
    sourse ./list_DataBases.sh

    printf "\nEnter dataBase_name ?\n"
    read dataBase_name
    printf "\n"
    cd Databases
    if [ -d "$dataBase_name" ]
    then
        connect_dataBase
    else
        printf "\nThis dataBase doesn't exist\n"

        printf  "back to menu\n"

        source ../main-menu.sh

    fi

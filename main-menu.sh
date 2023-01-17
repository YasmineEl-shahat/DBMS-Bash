#!/bin/bash

   printf "\nMain Menu Of DataBase\n\n"
   select choise in "Create DataBase" "Drop DataBase" "connect DataBase" "list DataBases" "Create Table" "Update Table" "Exit"
          do

          case $choise in


              "Create DataBase")

                              source ./create_DataBase.sh;;

              "Drop DataBase")

                              source ./drop_DataBase.sh;;


              "connect DataBase")

                              source ./connect_DataBase.sh;;

               "list DataBases")

                              source ./list_DataBases.sh;;

               "Create Table")

                               source ./create_Table.sh;;

               "update Table" )

                              source ./update_Table.sh;;
	      "Exit" )

                              exit ;;

               * )
                              echo "\n Please select an option \n";;

          esac

          done


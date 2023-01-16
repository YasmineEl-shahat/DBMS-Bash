#!/bin/bash

   printf "\nMain Menu Of DataBase\n\n"
   select choise in "Create DataBase" "Drop DataBase" "connect DataBase" "list DataBases" "Create Table" "Update Table" "Exit"
          do

          case $choise in


              "Create DataBase")

                              source ~/ITI/12-shell scripts/DBMS-Bash/create_DataBase.sh;;

              "Drop DataBase")

                              source ~/ITI/12-shell scripts/DBMS-Bash/drop_DataBase.sh;;


              "connect DataBase")

                              source ~/ITI/12-shell scripts/DBMS-Bash/connect_DataBase.sh;;

               "list DataBases")

                              source ~/ITI/12-shell scripts/DBMS-Bash/list_DataBases.sh;;

               "Create Table")

                               source ~/ITI/12-shell scripts/DBMS-Bash/create_Table.sh;;

               "update Table" )

                              source ~/ITI/12-shell scripts/DBMS-Bash/update_Table.sh;;
	      "Exit" )

                              exit ;;

               * )
                              echo "\n Please select an option \n";;

          esac

          done


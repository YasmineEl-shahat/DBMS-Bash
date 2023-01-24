#!/bin/bash

   printf "\nMain Menu Of DataBase\n\n"
   select choise in "Create DataBase" "Drop DataBase" "connect DataBase" "list DataBases" "Create Table" "Update Table" "Exit"
          do

          case $choise in


              "Create DataBase")

                              source ~/DBMS-Bash/create_DataBase.sh;;

              "Drop DataBase")

                              source ~/DBMS-Bash/drop_database.sh;;


              "connect DataBase")

                              source ~/DBMS-Bash/connect_DataBase.sh;;

               "list DataBases")

                              source ~/DBMS-Bash/list_databases.sh;;

               "Create Table")

                               source ~/DBMS-Bash/create_Table.sh;;

               "update Table" )

                              source ~/DBMS-Bash/update_Table.sh;;
	      "Exit" )

                              exit ;;

               * )
                              echo "\n Please select an option \n";;

          esac

          done


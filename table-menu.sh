#!/bin/bash

tableMenu(){

        cd $dataBase_name
        select choise in "list tables" "Create Table" "Delete Table" "update Table" "insert into Table"
          do

          case $choise in
	       "list tables")
			     source ~/DBMS-Bash/list_Tables.sh $dataBase_name;;

               "Create Table")

                              source ~/DBMS-Bash/create_Table.sh  $dataBase_name;;

               "Delete Table")

                              source ~/DBMS-Bash/delete_Table.sh;;

              "update Table")

                              source ~/DBMS-Bash/update_Table.sh;;
	
              "insert into Table")

                              source ~/DBMS-Bash/insert-into-table.sh  $dataBase_name;;


                              * )
                              printf "\nPlease choose a correct option\n"
          esac

          done

}

tableMenu $1

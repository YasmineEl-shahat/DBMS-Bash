#!/bin/bash

tableMenu(){

        cd ~/DBMS-Bash/Databases/$dataBase_name
        select choise in "list tables" "Create Table" "Delete Table" "update Table" "insert into Table" "delete record" "select from record"
          do

          case $choise in
	       "list tables")
			     source ~/DBMS-Bash/list_Tables.sh $dataBase_name;;

               "Create Table")

                              source ~/DBMS-Bash/create_Table.sh  $dataBase_name;;

               "Delete Table")

                              source ~/DBMS-Bash/drop_table.sh $dataBase_name;;

              "update Table")

                              source ~/DBMS-Bash/update-record.sh $dataBase_name;;
	
              "insert into Table")

                              source ~/DBMS-Bash/insert-into-table.sh  $dataBase_name;;
	      "delete record")

                              source ~/DBMS-Bash/delete-record.sh  $dataBase_name;;


	      "select from record")

                              source ~/DBMS-Bash/select_Record.sh;;

                              * )
                              printf "\nPlease choose a correct option\n"
          esac

          done

}

tableMenu $1

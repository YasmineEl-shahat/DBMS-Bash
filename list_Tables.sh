#!/bin/bash
for i in $(ls ~/DBMS-Bash/Databases/$1);
do
   echo ${i};
done

            printf  "Go back to menu\n"

             source ~/DBMS-Bash/table-menu.sh


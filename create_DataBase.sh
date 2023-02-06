#!/bin/bash

create_dataBase(){
     mkdir ~/DBMS-Bash/Databases/$dataBase_name
     printf "\n dataBase created successfully\n"
}
printf "\nEnter the name of dataBase ?\n"
read dataBase_name

cd ~/DBMS-Bash/Databases
#check if the dataBase_name Directory exist
if [ -d "$dataBase_name" ]
then
    printf "\ndataBase already exists\n"
else
    create_dataBase
    source ~/DBMS-Bash/main-menu.sh

fi

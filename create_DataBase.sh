#!/bin/bash


# create dataBase function

 create_dataBase(){
     mkdir "$dataBase_name"
     printf "\n database created successfully \n"
}



     printf "\nEnter the name of dataBase ?\n"
     read dataBase_name

     cd Databases
     #check if the dataBase_name Directory exist
     if [ -d "$dataBase_name" ]
     then
          printf "\n dataBase already exists \n"

     else
          create_dataBase

     fi

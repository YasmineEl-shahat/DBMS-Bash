#!/bin/bash

   #'2!d' ==> Prints the contents of Table; excepting all but the second line; to the standard output ( only the second line gets printed)
    read pk <<< `sed '2!d' $1`
    read -a arr_Of_dataTypes <<< `sed '7!d' $1`
    read -a arr_Of_Columns  <<< `sed '9!d' $1`
    printf "\nThe index of primary key column of the table is:\n $pk\n"
    
    echo "The data types of each column   [Note : (1) => int ,, (2) => string] " 
    echo ${arr_Of_dataTypes[@]}
    echo " "

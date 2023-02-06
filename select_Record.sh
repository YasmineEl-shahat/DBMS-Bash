#!/bin/bash

echo "enter table name:"
read table_name

source ~/DBMS-Bash/get-table-data.sh $table_name

source ~/DBMS-Bash/view_Table.sh
sed -n "1"p $table_name > temp_file
sed '1,4d' $table_name > temp_file

#calling printTable function
#printTable ' ' "$(cat temp_file)"


selectRecord()
{ 
     # sed -n "1"p $table_name > new_file
     sed -n "1"p $table_name > temp_file
      sed '1,4d' $table_name > temp_file
      printf "\nEnter the pk values of all records you want to display ,, each value separated by space :\n"
      read -a pk_value

      #Search to check if the selected pk_value exists
      typeset -i pk_field_number=$pk+1
      sed -n "1"p $table_name > new_file
      typeset -i i=0
      while [[ $i -lt ${#pk_value[@]} ]]
      do
            if [[ $( cut -d " " -f $pk_field_number temp_file | grep -x ${pk_value[i]} | cut -d: -f 1) =  ${pk_value[i]} ]]
            then

                  no_of_record=$(cut -d " " -f $pk_field_number $table_name | grep -xn ${pk_value[i]}| cut -d: -f 1)
                  sed -n "$no_of_record"p $table_name >> new_file

            else

                  printf "\nThe pk_value isn't exist,,please try again\n"

                  #Calling selectRecord function itself [Recursion]
                  selectRecord
            fi
            i=$i+1
      done

      printTable ' ' "$(cat new_file)"
      rm new_file
      rm temp_file

 }

#Calling selectRecord function
 selectRecord


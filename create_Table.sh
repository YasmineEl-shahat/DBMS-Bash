#!/bin/bash
 create_table(){

     touch "$table_name"

     printf "\nEnter columns names sperated by a space\n"
     read -a columns_arr

     arr_length="${#columns_arr[@]}"

     typeset -a dataType_arr[$arr_length]

     typeset -i i=0
     while [[ $i -lt $arr_length ]]
     do

        printf "\nfor ${columns_arr[$i]} field determine the dataType: "

        select data_type in int varchar
        do
          case $data_type in

               int)
                    dataType_arr[$i]=1
                    break;
                    ;;

               varchar)
                    dataType_arr[$i]=2
		     break;
                    ;;
               *)
                    printf "\n!!please specify the data_type of the field!!\n"
                    ;;

          esac
        done

        i=$i+1
     done


     getPrimaryKey(){
          # continue ask user to enter pk until enter avalid pk name 
          while [ true ]
          do

          	#Display all columns of table to user
         	printf "Your table columns are :\n"
          	echo "${columns_arr[@]}"

          	printf "\nEnter your PK column index number\n"
          	read pk
                if [[ $pk =~ ^[0-9]+$ ]]
                then

                    if [[ $pk -lt $arr_length ]]
                    then

                              echo "The index of Your primary key column is:" >> $table_name   
                              echo $pk >> $table_name    
                              break;
		      else
			      printf "\n$pk column idx does not exist ,, try again please!\n"

	                      #Calling getPrimarykey function [Recursion]
          	              getPrimarykey

                    fi
               else
                    printf "\n$pk column idx does not exist ,, try again please!\n"

                    #Calling getPrimarykey function [Recursion]
                    getPrimarykey
               fi


          done
     }

     #Calling getPrimaryKey function
     echo ${columns_arr[@]} >> $table_name
     getPrimaryKey

     #echo " " >> $table_name 
     #echo "Your table columns are" >> $table_name 
     #echo ${columns_arr[@]} >> $table_name 
     #echo "The data types of each column " >> $table_name
     echo ${dataType_arr[@]} >> $table_name 
     #echo "Note : (1) => int ,, (2) => varchar " >> $table_name 
     printf "\nYour table has been created successfully\n\n"
}

printf "\nEnter table name: \n"
read table_name
#Check the table name validation 
if [[ $table_name =~ ^[a-zA-Z]+$ ]]
then
      	#check if the table-name already exists
      	if [ -f "$table_name" ]
      	then

        	 printf "\nThis table_name already exists"
      	else
        	 create_table
		 source ~/DBMS-Bash/table-menu.sh

      	fi
else
        printf "\ntable name must be string only \n"
fi


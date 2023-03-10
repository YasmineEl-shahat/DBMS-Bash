#!/bin/bash
echo "Available tables in $1"
ls ~/DBMS-Bash/Databases/$1
read -p "Enter table Name: " table_name
if [[ -f ~/DBMS-Bash/Databases/$1/$table_name ]]
then
	awk -F: 'BEGIN{FS=" "}{if(NR==1){print $0}}' ~/DBMS-Bash/Databases/$1/$table_name;
	read -p "Enter column to delete record from  : " coldel;
	columnNumber=`awk -v RS=" " "/$coldel/{print NR; exit}"   ~/DBMS-Bash/Databases/$1/$table_name`
	#echo $columnNumber
	if [ -z $columnNumber ]
                then
        echo "column does not exist"
                  fi

	read -p "Enter value : " vldel;
	    number_of_record=$(cut -d " " -f $columnNumber ~/DBMS-Bash/Databases/$1/$table_name | grep -xn $vldel | cut -d: -f 1)
	
    	    if [ -z $ number_of_record ]
            then
             echo "No records with this value"
              fi

	       sed "$number_of_record"d $table_name > temp_file
		cat temp_file > ~/DBMS-Bash/Databases/$1/$table_name
		rm temp_file
		#echo $number_of_record

		printf "\nThe record has been deleted\n"
		source ~/DBMS-Bash/table-menu.sh

       
	
	
	else
	echo "table doesn't exist";
	source ~/DBMS-Bash/table-menu.sh

fi


#!/bin/bash
echo "Available tables in $1"
ls ~/DBMS-Bash/Databases/$1


read -p "Enter table Name: " table_name



if [ ! -f ~/DBMS-Bash/Databases/$1/$table_name ]
then
	echo "table does not exist"
fi
 awk -F: 'BEGIN{FS=" "}{if(NR==1){print $0}}' ~/DBMS-Bash/Databases/$1/$table_name;

read -p "Enter column to update record from  : " colName
columnNumber=`awk -v RS=" " "/$colName/{print NR; exit}"   ~/DBMS-Bash/Databases/$1/$table_name`
if [ -z $columnNumber ]
then
	echo "column does not exist"
fi
read -p "Enter value  to update  : " value;

searchforvalue=$(cut -d " " -f $columnNumber ~/DBMS-Bash/Databases/$1/$table_name | grep -xn $value | cut -d: -f 1)
#echo $searchforvalue
if [ -z $searchforvalue ]
then
	echo "value doesnt exist"
fi
read -p "enter new value : " newValue
sed -i ''$searchforvalue's/'$value'/'$newValue'/g' ~/DBMS-Bash/Databases/$1/$table_name 2>/dev/null
echo "table updated successfully"
 source ~/DBMS-Bash/table-menu.sh




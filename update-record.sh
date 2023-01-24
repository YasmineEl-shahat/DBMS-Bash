#!/bin/bash
echo "Available tables in $1"
ls ~/DBMS-Bash/Databases/$1


read -p "Enter table Name: " table_name

echo "Columns and records of table :"
echo ${arr_Of_Columns[@]}
echo " "



if [ ! -f ~/DBMS-Bash/Databases/$1/$table_name ]
then
	echo "table does not exist"
fi
read -p "Enter column to update record from  : " colName
columnNumber=`awk -v RS=" " "/$colName/{print NR; exit}"   ~/DBMS-Bash/Databases/$1/$table_name`
if [ -z $columnNumber ]
then
	echo "column does not exist"
fi
read -p "Enter value  to update  : " value;

searchforvalue=`cut -d " " -f $columnNumber ~/DBMS-Bash/Databases/$1/$table_name 2>/dev/null|awk "/$value/{print NR}" `
echo $searchforvalue
if [ -z $searchforvalue ]
then
	echo "value doesnt exist"
fi
read -p "enter update column:" colUpdate

updateNum=`awk -v RS=" " "/$colUpdate/{print NR}" ~/DBMS-Bash/Databases/$1/$table_name`
if [ -z $updateNum ]
then
	echo "colum does not exist"
fi
oldValue=$(awk 'BEGIN{FS=" "} {
if(NR=="'searchforvalue'"){
	print $'$updateNum';
}}'  ~/DBMS-Bash/Databases/$1/$table_name )
sed -i '$$searchforvalue's/'$oldValue'/'



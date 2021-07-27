#!/bin/bash -x
declare -A dict
read -p  "Enter the number of records:" num
counter=0
for ((i=0;i<$num;i++))
do
read -p "Enter the type of value: " key
read -p "Enter the value: " value
dict["$key"]="$value"
a[((counter++))]="${dict["$key"]}"
done
echo "${dict[@]}"
echo "${a[@]}"

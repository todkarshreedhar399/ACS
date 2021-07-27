#!/bin/bash -x
declare -A dict
read -p  "Enter the number of records:" num
for ((i=0;i<$num;i++))
do
read -p "Enter the type of value: " key
read -p "Enter the value: " value
dict["$key"]="$value"
done
echo "${dict[@]}"

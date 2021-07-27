#!/bin/bash -x

declare -A computeDictionary

read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c
counter=0

echo "a= $a"
echo "b= $b"
echo "c= $c"

temp1=$(($a+$b))
compute1=$(($temp1*$c))
echo "answer: $compute1"

temp2=$(($a*$b))
compute2=$(($temp2+$c))
echo "answer: $compute2"

temp3=$(($c+$a))
compute3=$(($temp3/$b))
echo "answer: $compute3"

temp4=$(($a%$b))
compute4=$(($temp4+$c))
echo "answer: $compute4"

Array[((counter++))]=$compute1
Array[((counter++))]=$compute2
Array[((counter++))]=$compute3
Array[((counter++))]=$compute4
echo "${Array[*]}"


for ((i=0;i<4;i++))
do
	for ((j=i+1;j<4;j++))
	do
		if [ ${Array[j]} -lt ${Array[i]} ]
		then
			temp=$[${Array[i]}]
			Array[i]=$[${Array[j]}]
			Array[j]=$[$temp]
		fi
		done
	done


echo "Ascending order of an array: ${Array[*]}"


#!/bin/bash -x

declare -A computeDictionary

read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c

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

computeDictionary[eq1]=[$compute1]
computeDictionary[eq2]=[$compute2]
computeDictionary[eq3]=[$compute3]
computeDictionary[eq4]=[$compute4]
echo "${computeDictionary[*]}"

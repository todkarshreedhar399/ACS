#!/bin/bash -x
read -p "Enter number a:" a
read -p "Enter number b:" b
read -p "Enter number c:" c
sum=$[$a+$b*$c]
echo "Computation(a*b+c)=$sum"

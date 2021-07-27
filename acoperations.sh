#!/bin/bash -x
read -p "Enter number a:" a
read -p "Enter number b:" b
read -p "Enter number c:" c
sum=$[$c+$a/$b]
echo "Computation(c+a/b)=$sum"

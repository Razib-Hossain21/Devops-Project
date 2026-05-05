#!/bin/bash
#This script is about for loop
echo "Enter value of N: "
read n
for i in $(seq 0 $n)
do
	echo "Number is : $i"
done

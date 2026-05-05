#!/bin/bash
#This script for while loop common method

echo "Enter your value: "
read n
i=1
while [ $i -le $n ]
do
	echo "Number is: $i"
	((i++))
done	

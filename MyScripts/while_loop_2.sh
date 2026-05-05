#!/bin/bash
# This script prints numbers using while loop with seq

echo "Enter value of N: "
read n

seq 1 "$n" | while read i
do
    echo "Number is : $i"
done


#!/bin/bash

read -p "Enter the number: " num

echo $num
echo "Table is as follows:"

for (( i=1; i<=10; i++ ))
do
        val=$(( num * i ))
        echo "$num * $i = " $val
done

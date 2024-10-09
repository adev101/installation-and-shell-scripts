#4.	Get a number from user and print next 100 numbers

#!/bin/bash

read -p "Enter the number: " num

echo $num
max=$(($num + 100))
echo $max
echo "Next 100 numbers are:"

for (( i="$num"+1; i<="$max"; i++ ))
do
        echo "$i"
done

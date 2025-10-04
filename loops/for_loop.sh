#!/bin/bash
echo "Enter an Number: "
read num

echo "Multiplcation table of : $num"
for i in {1..10}; do
	echo "the multplication of $num X $i = $(($num * $i))"

done 



#!/bin/bash

print_table() {
	num=$1
	i=1
	echo "mutiplcation table of $num "
	while [ $i -le 10 ]; do
		echo "multilaction table of $num X $i = $(($num * $i))"
		((i++))
	done
}

echo "Enter an Number" 
read number 

print_table $number

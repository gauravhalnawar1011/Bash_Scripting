#!/bin/bash

echo "Enter a Number: "
read num 

if [ $num -gt 0 ]; then 
	echo "positive number you Enter an Number: $num"
elif [ $num -lt 0 ]; then
	echo "Negetive Number You Enter an Number : $num"
else 
	echo "Zero"
fi

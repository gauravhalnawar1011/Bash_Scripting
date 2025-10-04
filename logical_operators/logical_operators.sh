#!/bin/bash
#
echo "Enter a Number : "
read num

if [ $num -gt 0 ] && [ $num -lt 100 ]; then 
	echo "Number is Between 1 to 99"
fi
if [ $num -lt 0 ] || [ $num -gt 100 ]; then
        echo "Number is outside 1-100"
fi 
if [ $num -eq 50 ]; then
        echo "Number is not 50"
fi 


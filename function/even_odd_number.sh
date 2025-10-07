#!/bin/bash

is_even() {
	if (( $1 % 2 == 0 )); then 
		return 0
	else
		return 1
	fi
}

echo "ENter an Number: "
read n

if is_even $n; then 
	echo "$n is even "
else 
	echo "$n is odd"

fi



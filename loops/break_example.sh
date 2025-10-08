#!/bin/bash 
#
for i in {1..10}; do 
	echo "Iteration :$i"
	if [ $i -eq 5 ]; then 
		echo "Breacking the loop At : $i"
		break 
	fi
done

echo "Loop Exited at $i"

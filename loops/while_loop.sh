#!/bin/bash
echo "Enter a Number: "
read num 

i=1
echo "Multiplaction table of : $num"
while [ $i -le 10 ]; do 
	echo "the Multiplaiction table of $num X $i = $(($i * $num))"
	let i++
done 

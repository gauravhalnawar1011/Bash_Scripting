#!/bin/bash

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

add() {
    local a=$1
    local b=$2
    sum=$(( a + b ))
    echo $sum
}

result=$(add "$num1" "$num2")
echo "Sum = $result"


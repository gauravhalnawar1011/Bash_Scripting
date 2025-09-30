#/bin/bash

myArray=(1 hello 34 bash 43 you 67 are awesome)
echo "${myArray[@]}"

# to print the indexes of an array we can use
echo "${!myArray[@]}"
echo "${myArray[*]}"

#to print the specific indexes we can use this 
echo "hey ${myArray[1]} ${myArray[3]} ${myArray[5]} ${myArray[7]} ${myArray[8]}"


# how to find the length of array 
echo "the length of Array is: ${#myArray[*]}"

# to print an range of an array we can use like
echo "the array range from 2 to 5 are : ${myArray[*]:2:5}"

# to update an array 
myArray+=(here we are updating an array)
echo "${myArray[*]}"

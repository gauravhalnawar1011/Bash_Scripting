#/bin/bash 

# how to store the key value pairs in array
declare -A myArray

myArray=([name]=Gaurav [height]=6ft [weight]=85kg [favrote]=banana [food]=aloo)

echo "${myArray[*]}"

echo "${myArray[name]}"
echo "${myArray[favrote]}"

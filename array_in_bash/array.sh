#this for the arrays in bash
#!/bin/bash
# declaring an array
friends=("alice" "bob" "charlie" "david")
# printing all elements of the array
echo "the friends are: ${friends[@]}" # this will print all the elements of the array
echo "the david is present at index: ${!friends[@]}"
# to print the david index  
for i in "${!friends[@]}"; do
 if [ "${friends[$i]}" == "david" ]; then
   echo "david is present at index: $i"
 fi
done

# to print the index number of an bob

for i in "${!friends[@]}"; do
 if [ "${friends[$i]}" == "bob" ]; then
   echo "bob is present at index: $i"
 fi
done

# to print all elements with their index numbers
for i in "${!friends[@]}"; do
  echo "index $i: ${friends[$i]}"
done    

# # we will use to print the length of the array
echo "the length of the array is: ${#friends[@]}" # this will print the length of the array we include # before the array name to get the length of the array
 # to print the index of the array
echo "the index of the array is: ${!friends[@]}" # this will print the index of the array we use ! to print the index of the array
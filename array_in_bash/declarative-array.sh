#!/bin/bash 
# this is how to declare an array in bash
declare -a fruits=("mango" "banana" "grapes" "orange")
echo "the fruits are: ${fruits[@]}" # to print all the elements of the array    
echo "the first fruit is: ${fruits[0]}" # to print the first element of the array
echo "the second fruit is: ${fruits[1]}" # to print the second element of the array
echo "the third fruit is: ${fruits[2]}" # to print the third element of the array
echo "the fourth fruit is: ${fruits[3]}" # to print the fourth element of the array
echo "the length of the array is: ${#fruits[@]}" # to print the length of the array



echo "the index of the array is: ${!fruits[@]}" # to print the index of the array


# adding an element to the 
fruits+=("kiwi") #to add the element kiwi to the array we use the += operator
echo "the fruits after adding kiwi are: ${fruits[@]}" # to print all the elements of the array after adding kiwi




# removing an element from the array
unset fruits[1] # to remove the element at index 1 (banana) we use the unset command we specify the index of the element to be removed we use unset fruits[index]
echo "the fruits after removing banana are: ${fruits[@]}" # to print all the elements of the array after removing banana
# replacing an element in the array # to replace the element at index 1 (grapes) with pineapple we simply assign the new value to the index

fruits[1]="pineapple" # to replace the element at index 1 with pineapple
echo "the fruits after replacing grapes with pineapple are: ${fruits[@]}"   


echo "the fruits are: ${fruits[@]}"

# to add the element at specific index

fruits[1]="pineapple"
echo "the fruits after adding pineapple at index 1 are: ${fruits[@]}"

#to add the fruit in the 1 index without replacing the existing fruit
fruits=( "${fruits[@]:0:1}" "kiwi" "${fruits[@]:1}" )
echo "the fruits after adding kiwi at index 1 are: ${fruits[@]}"

# to print the array in reverse order
echo "the fruits in reverse order are: ${fruits[@]}"
for (( i=${#fruits[@]}-1; i>=0; i-- )); do
  echo "${fruits[i]}"
done
# to print the array in sorted order
sorted_fruits=($(for i in "${fruits[@]}"; do echo $i; done | sort))
echo "the fruits in sorted order are: ${sorted_fruits[@]}"
# to print the array in uppercase
uppercase_fruits=($(for i in "${fruits[@]}"; do echo ${i^^}; done))
echo "the fruits in uppercase are: ${uppercase_fruits[@]}"
# to print the array in lowercase       
lowercase_fruits=($(for i in "${fruits[@]}"; do echo ${i,,}; done))
echo "the fruits in lowercase are: ${lowercase_fruits[@]}"
# to join the array elements into a string
fruits_string=$(IFS=, ; echo "${fruits[*]}")
# why use IFS=, because it is the internal field separator
echo "the fruits string is: $fruits_string"
# to split a string into an array       
IFS=, read -r -a new_fruits <<< "$fruits_string"
echo "the new fruits array is: ${new_fruits[@]}"        
# to iterate over the array elements
echo "iterating over the fruits array:"
for fruit in "${fruits[@]}"; do
  echo "$fruit"
done

# to find the index of an element in the array
search_fruit="orange"
for i in "${!fruits[@]}"; do
  if [[ "${fruits[i]}" == "$search_fruit" ]]; then
    echo "the index of $search_fruit is: $i"
  fi
done
# to check if an element exists in the array
check_fruit="banana"
if [[ " ${fruits[@]} " =~ " $check_fruit " ]]; then
  echo "$check_fruit exists in the array"
else
  echo "$check_fruit does not exist in the array"
fi
# to get a subarray from the array      
subarray=("${fruits[@]:1:2}")
echo "the subarray from index 1 with length 2 is: ${subarray[@]}"
# to clear the array
unset fruits
echo "the fruits array after clearing is: ${fruits[@]}"
echo "the length of the fruits array after clearing is: ${#fruits[@]}"
# to declare an associative array
declare -A colors
colors=(["red"]="#FF0000" ["green"]="#00FF00" ["blue"]="#0000FF")
echo "the colors are: ${colors[@]}"
echo "the color of red is: ${colors["red"]}"
echo "the color of green is: ${colors["green"]}"
echo "the color of blue is: ${colors["blue"]}"
# to add an element to the associative array
colors["yellow"]="#FFFF00"
echo "the colors after adding yellow are: ${colors[@]}"
# to remove an element from the associative array
unset colors["green"]
echo "the colors after removing green are: ${colors[@]}"
# to get the keys of the associative array
echo "the keys of the colors array are: ${!colors[@]}"          
# to get the length of the associative array
echo "the length of the colors array is: ${#colors[@]}"
# to iterate over the associative array             



echo "iterating over the colors array:"
for color in "${!colors[@]}"; do
  echo "$color: ${colors[$color]}"
done
# to clear the associative array
unset colors
echo "the colors array after clearing is: ${colors[@]}"
echo "the length of the colors array after clearing is: ${#colors[@]}"  
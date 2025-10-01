#/bin/bash


array=(1 "hello world" 39.09 "hey rokke" "hey dev")

students=("rahul" "vishal" "shravn")
roll_no=(12 34 56)

echo "the stduents name is the: ${students[@]}"

echo "the roll number of the studnets are : ${roll_no[@]}"

echo "the index 0 has the value: ${students[0]}"
echo "the index 1 has the value: ${students[1]}"
echo "the index 2 has the value: ${students[2]}"
echo "the index 3 has the value: ${students[3]}"
echo "the index 0 has the value: ${students[*]:1:3}"


roll_no+=(67 89 09)

echo "update new roll_no list : ${roll_no[@]}"

# echo "${array[@]}"
# to check the array length 

echo  "the the lngth of an roll_no is : ${#roll_no[*]}"

echo  "the the lngth of an students  is : ${#students[*]}"

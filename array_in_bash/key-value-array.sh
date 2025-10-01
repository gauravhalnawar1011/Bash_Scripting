#/bin/bash 

# how to store the key value pairs in array
declare -A myArray

myArray=([name]=Gaurav [height]=6ft [weight]=85kg [favrote]=banana [food]=aloo)


declare -A students
students=([name]=Rahul [roll_no]=34 [university]=SPPU)

echo "the my studnets array conatins an name is : ${students[name]}"
echo "the my studnets array conatins an roll no  is : ${students[roll_no]}"
echo "the my studnets array conatins an university is : ${students[university]}"

echo "${myArray[*]}"

echo "${myArray[name]}"
echo "${myArray[favrote]}"

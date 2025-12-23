 # this for the multplication table in bash using the function
#!/bin/bash
multiplication_table() {
  local num=$1
  echo "Multiplication Table for $num:"
  for i in {1..10}; do
    echo "$num x $i = $((num * i))"
  done
  echo ""
}
# # this for the taking input from the user
# echo "Enter a number to generate its multiplication table:"
# read number
# multiplication_table "$number"

# calling the function again for another number
multiplication_table 1
multiplication_table 2


   

output_file="multiplication_tables.txt"

echo "Multiplication tables from 1 to 10 have been saved to $output_file"
multiplication_table_to_file() {
  local num=$1
  local file=$2
  {
    echo "Multiplication Table for $num:"
    for i in {1..10}; do
      echo "$num x $i = $((num * i))"
    done
    echo ""
  } >> "$file"
}   
# calling the function to store tables from 1 to 10 in multiplication_tables.txt
for n in {1..10}; do
  multiplication_table_to_file "$n" "$output_file"
done


# for the strinh out put in each file we can do like this
#like table 1 is in the file table_1.txt table 2 is in the file table_2.txt and so on
for n in {1..10}; do
  output_file="table_${n}.txt"
  multiplication_table_to_file "$n" "$output_file"
  echo "Multiplication table for $n has been saved to $output_file"
done    
# function to generate multiplication table and save to a file      

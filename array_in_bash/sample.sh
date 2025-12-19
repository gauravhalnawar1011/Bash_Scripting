#!/bin/bash

my_array=( redhat ubuntu debian amazon suse fedora)

echo "${my_array[@]}"

echo "${my_array[i]}"

echo "${my_array[0]}"	

echo "${my_array[1]}"

echo "${my_array[2]}"	

echo "${my_array[3]}"

echo "${my_array[4]}"
echo "${my_array[5]}"
echo "${my_array[*]}"

echo "${#my_array[*]}"

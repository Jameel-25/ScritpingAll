#!/bin/bash

#To execute bash "filename"

#Array

myArray=(1 2 Hello 0.3 "One" "Hey man")

echo "All the values in array are: ${myArray[*]}"

echo "Value in 0th index is: ${myArray[0]}"
echo "${myArray[1]}"
echo "${myArray[5]}"

# How to find no. of values in an array
echo "No. of values, length of any array is: ${#myArray[*]}"

echo "Values from index 2 to 3: ${myArray[*]:2:2}"

# How to update an array?

myArray+=( 5 6 8)

echo "Values after adding elements in the array: ${myArray[*]}"

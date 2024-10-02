#!/bin/bash

#How to store the key value pairs

declare -A myArray #Initialize
myArray=( [name]=Jameel [age]=27 [city]=Hyderabad )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"

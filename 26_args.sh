#!/bin/bash

# To access the arguments

if [[ $# -eq 0 ]]
then
	echo "Please provide atleast one argument"
	exit 1
fi


echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments are - $@"
echo "Number of arguemnts are - $#"

# for loop to access the values from agruments

for filename in $@
do
	echo "Copying file - $filename"
done

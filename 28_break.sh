#!/bin/bash

# Example of break in a loop
# We just need to confirm if a given no if present or not 

no=6

for i in 1 2 3 4 5 6 7 8 9
do 
	# Break the loop if no. is found
	if [[ $no -eq $i ]]
	then 
		echo "$no is found!!!"
		break
	fi
	echo "Number is $i"
done

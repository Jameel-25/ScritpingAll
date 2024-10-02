#!/bin/bash

for num in {1..20}
do 
	if [[ $((num % 2)) -eq 0 ]]; then
		continue ##skip even numbers
	fi

	echo "$num is odd"
done

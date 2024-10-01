#!/bin/bash

counter=20

while [[ $counter -gt 0 ]]
do
	echo "Countdown: $counter"
	sleep 1 # Wait for 1 second
	((counter--)) # Derease value by 1
	if [[ $counter -eq 0 ]]; then 
		echo "Countdown finished!"
		break
	fi
done

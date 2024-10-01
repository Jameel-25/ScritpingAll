#!/bin/bash

threshold=80

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

while true
do

	if [[ $usage -gt $threshold ]]; then
		echo "Warning! Disk usage is above $threshold %: Current usage is $usage %"
		break # stop the loop when usage exceeds above the threshold
	else
		echo "Disk usage is: $usage %. Everthing is fine."
	fi

	sleep 5 # Wait for 5 seconds before checking again
	usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g') # Recheck again
done

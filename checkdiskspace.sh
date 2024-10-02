#!/bin/bash

threshold=80

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

if [[ $usage -gt $threshold ]]
then
	echo "Disk space is critical: $usage% used"
else
	echo "Disk space is under control: $usage% used"
fi

#!/bin/bash

# Monitoring the free fs space disk

FU=$( df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d %
 )
TO="jameeljameel@gmail.com"


if [[ $FU -ge 80 ]]
then
	echo "Warning, disk space is low - $FU %" | mail -s "Disk Space Alert!" $TO
else
	echo "All good"
fi

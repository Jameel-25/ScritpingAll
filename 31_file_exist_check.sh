#!bin/bash

FILEPATH="/home/mohammedjameel/myscripts/file2.txt"

if [[ -f $FILEPATH ]]
then 
	echo "File exists"
else
	echo "Creating file now"
	touch $FILEPATH	
fi

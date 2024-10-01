#!/bin/bash

while IFS="," read id name city
do
	echo "Id is $id"
	echo "Name is $name"
	echo "City is $city"
done < data.csv

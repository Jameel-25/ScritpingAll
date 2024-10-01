#!/bin/bash

for i in {1..9}
do

if [[ $i -eq 3 ]]; then
continue # skip the current iteration
fi

echo "Number:$i"
done

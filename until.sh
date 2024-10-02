#!/bin/bash

i=1

until [[ $i -gt 10 ]]; do
echo "Counting the numbers:$i"
i=$((i+1))
done

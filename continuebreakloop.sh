#!/bin/bash

for ((i=1; i<=3; i++))
do
    echo "Outer loop iteration: $i"
    sleep 2
    for ((j=1; j<=3; j++))
    do
        if [[ $j -eq 2 ]]; then
            continue  # Skip when j is 2
        elif [[ $j -eq 3 ]]; then
            break  # Break out of inner loop when j is 3
        fi
        echo "    Inner loop iteration: $j"
    done
done

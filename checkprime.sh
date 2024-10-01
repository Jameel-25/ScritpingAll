#!/bin/bash

for num in {2..10}
do
    is_prime=1  # Assume the number is prime
    for ((i=2; i<num; i++))
    do
        if [[ $((num % i)) -eq 0 ]]; then
            is_prime=0  # If divisible, not prime
            break
        fi
    done

    if [[ $is_prime -eq 1 ]]; then
        echo "$num is a prime number."
    else
        echo "$num is not a prime number."
    fi
done

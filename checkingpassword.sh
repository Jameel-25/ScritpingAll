#!/bin/bash

correct_password="password123"

until [[ "$user_input" == "$correct_password" ]]
do
    echo "Enter the correct password:"
    read user_input
    if [[ "$user_input" == "$correct_password" ]]; then
        echo "Password is correct. Exiting."
        break
    else
        echo "Incorrect password. Try again."
    fi
done

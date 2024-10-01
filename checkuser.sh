#!/bin/bash
read -p "Enter the username:" username

if id "$username"&>/dev/null
then
 echo "User $username exists."
else
 echo "User $username does not exists."
fi

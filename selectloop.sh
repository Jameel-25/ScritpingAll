#!/bin/bash

PS3="Choose a fruit:"
select fruit in Apple Banana Cherry Mango Papaya Orange Watermelon Pomegranate Fig Dragon; do
echo "You have selected $fruit"
break
done

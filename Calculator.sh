#!/bin/bash

# Function to validate if input is a number
function is_number() {
    [[ $1 =~ ^-?[0-9]+([.][0-9]+)?$ ]]
}

# Function to add two numbers
function add() {
    sum=$(echo "$num1 + $num2" | bc)
    echo "Sum of $num1 and $num2 is: $sum"
}

# Function to subtract two numbers
function sub() {
    subb=$(echo "$num1 - $num2" | bc)
    echo "Subtraction of $num1 and $num2 is: $subb"
}

# Function to multiply two numbers
function mul() {
    mull=$(echo "$num1 * $num2" | bc)
    echo "Multiplication of $num1 and $num2 is: $mull"
}

# Function to divide two numbers with error handling for division by zero
function div() {
    if [ "$num2" == "0" ]; then
        echo "Error: Division by zero is not allowed."
    else
        divv=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Division of $num1 by $num2 is: $divv"
    fi
}

# Main function to control the flow of the program
function main() {
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    # Validate inputs
    if ! is_number "$num1" || ! is_number "$num2"; then
        echo "Error: Both inputs must be valid numbers."
        exit 1
    fi

    # Perform operations
    add
    sub
    mul
    div
}

# Call the main function
main

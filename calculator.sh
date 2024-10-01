#!/bin/bash
read -p "Enter first number: " num1
read -p "Enter second number: " num2

function add {
	let sum=num1+num2
	echo "Sum of two numbers is: $sum" 
}
function sub {
	let subb=num1-num2
	echo "Subtraction of two numbers is: $subb"
}

function mul {
        let mull=num1*num2
        echo "Multipliation of two numbers is: $mull"
}

function div {
        let divv=num1/num2
        echo "Division of two numbers is: $divv"
}

add num1 num2
sub num1 num2
mul num1 num2
div num1 num2

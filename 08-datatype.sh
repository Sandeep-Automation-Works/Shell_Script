#!/bin/bash

num1=1
num2=2

sum=$(($num1+$num2))
echo "Sum: $sum"

#Array

fruits=("Apple" "Banana" "Promo")

echo "all fruits: ${fruits[$@]}"
echo "first fruit is: ${fruits[0]}"
echo "second fruit is: ${fruits[1]}"
echo "Third fruits: ${fruits[2]}"

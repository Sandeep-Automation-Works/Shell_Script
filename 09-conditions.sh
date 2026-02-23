#!/bin/bash

number=$1

# -gt -> greater than
# -lt -> less than
# -eq -> equal
# -ne -> not equal

echo "Your given number is: $number"

if [ $number -gt 30 ]; then
    echo "Given number: $number is greater than 30"
elseif [$number -eq 30]
    echo "Given number: $number is less than 30"
fi
#!/bin/bash
# Practical 3 - Sum of digits
read -p "Enter a number: " num

# Work with the absolute value so negative numbers are also handled.
n=${num#-}
sum=0

if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid integer."
    exit 1
fi

while [ "$n" -gt 0 ]; do
    digit=$((n % 10))
    sum=$((sum + digit))
    n=$((n / 10))
done

echo "Sum of digits = $sum"

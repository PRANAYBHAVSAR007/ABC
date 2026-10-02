#!/bin/bash
read -p "Enter a string: " str
reverse=""

for ((i=${#str}-1; i>=0; i--)); do
    reverse="${reverse}${str:i:1}"
done

if [ "$str" = "$reverse" ]; then
    echo "$str is a palindrome"
else
    echo "$str is not a palindrome"
fi

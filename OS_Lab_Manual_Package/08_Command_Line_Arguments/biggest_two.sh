#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: bash biggest_two.sh num1 num2"
    exit 1
fi

if [ "$1" -ge "$2" ]; then
    echo "$1 is largest number"
else
    echo "$2 is largest number"
fi

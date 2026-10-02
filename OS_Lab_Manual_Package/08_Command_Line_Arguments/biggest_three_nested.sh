#!/bin/bash
if [ "$#" -ne 3 ]; then
    echo "Usage: bash biggest_three_nested.sh num1 num2 num3"
    exit 1
fi

a=$1
b=$2
c=$3

if [ "$a" -ge "$b" ]; then
    if [ "$a" -ge "$c" ]; then
        echo "$a is largest number"
    else
        echo "$c is largest number"
    fi
else
    if [ "$b" -ge "$c" ]; then
        echo "$b is largest number"
    else
        echo "$c is largest number"
    fi
fi

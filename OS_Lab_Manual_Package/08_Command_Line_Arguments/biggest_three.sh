#!/bin/bash
# Practical 8 - largest of three command-line arguments

if [ "$#" -ne 3 ]; then
    echo "Usage: bash biggest_three.sh num1 num2 num3"
    exit 1
fi

a=$1
b=$2
c=$3

if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ]; then
    echo "$a is largest number"
elif [ "$b" -gt "$a" ] && [ "$b" -gt "$c" ]; then
    echo "$b is largest number"
elif [ "$c" -gt "$a" ] && [ "$c" -gt "$b" ]; then
    echo "$c is largest number"
else
    # Handles equal maximum values.
    max=$a
    [ "$b" -gt "$max" ] && max=$b
    [ "$c" -gt "$max" ] && max=$c
    echo "$max is largest number"
fi

#!/bin/bash
read -p "Enter year: " yy
if [ $((yy % 400)) -eq 0 ]; then
    echo "$yy is a leap year"
elif [ $((yy % 100)) -eq 0 ]; then
    echo "$yy is not a leap year"
elif [ $((yy % 4)) -eq 0 ]; then
    echo "$yy is a leap year"
else
    echo "$yy is not a leap year"
fi

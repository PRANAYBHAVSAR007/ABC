#!/bin/bash
# Practical 4 - Validate date in dd-mm-yyyy format

read -p "Enter date (dd-mm-yyyy): " date

if [[ ! "$date" =~ ^([0-9]{2})-([0-9]{2})-([0-9]{4})$ ]]; then
    echo "Invalid format. Use dd-mm-yyyy."
    exit 1
fi

day=${BASH_REMATCH[1]}
month=${BASH_REMATCH[2]}
year=${BASH_REMATCH[3]}

# 10# avoids interpreting values such as 08 as octal in arithmetic.
day=$((10#$day))
month=$((10#$month))
year=$((10#$year))

if [ "$month" -lt 1 ] || [ "$month" -gt 12 ]; then
    echo "Invalid date"
    exit 0
fi

days_in_month=31
case "$month" in
    4|6|9|11) days_in_month=30 ;;
    2)
        if [ $((year % 400)) -eq 0 ] || { [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ]; }; then
            days_in_month=29
        else
            days_in_month=28
        fi
        ;;
esac

if [ "$day" -ge 1 ] && [ "$day" -le "$days_in_month" ]; then
    printf "Valid date: %02d-%02d-%04d\n" "$day" "$month" "$year"
else
    echo "Invalid date"
fi

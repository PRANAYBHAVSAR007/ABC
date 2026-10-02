#!/bin/bash
# Practical 6 - Greet according to system hour
hour=$(date +%H)
hour=$((10#$hour))

if [ "$hour" -ge 5 ] && [ "$hour" -lt 12 ]; then
    echo "Good morning!"
elif [ "$hour" -ge 12 ] && [ "$hour" -lt 17 ]; then
    echo "Good afternoon!"
else
    echo "Good evening!"
fi

#!/bin/bash
# Manual Set 1 - case statement demonstration
read -p "Enter hello or bye: " str
case "$str" in
    hello) echo "Hello yourself!" ;;
    bye)   echo "See you again!" ;;
    *)     echo "Sorry, I don't understand" ;;
esac

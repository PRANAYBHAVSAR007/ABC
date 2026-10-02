read -p "Enter a string or number: " input

clean_input=$(echo "$input" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')

len=${#clean_input}
reverse_input=""

for (( i=$len-1; i>=0; i-- )); do
    reverse_input="$reverse_input${clean_input:$i:1}"
done

echo "------------------------------"
if [ "$clean_input" == "$reverse_input" ]; then
    echo "Result: '$input' is a Palindrome."
else
    echo "Result: '$input' is NOT a Palindrome."
fi
echo "------------------------------"

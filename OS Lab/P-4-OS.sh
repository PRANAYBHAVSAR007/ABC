echo "Enter date (DD MM YYYY):"
read d m y

d=$(echo $d | tr -d '\r' | sed 's/^0*//')
m=$(echo $m | tr -d '\r' | sed 's/^0*//')
y=$(echo $y | tr -d '\r' | sed 's/^0*//')

is_valid=0
max=0

if [[ "$m" =~ ^(1|3|5|7|8|10|12)$ ]]; then
    max=31
    echo "✔ Month $m has 31 days."

elif [[ "$m" =~ ^(4|6|9|11)$ ]]; then
    max=30
    echo "✔ Month $m has 30 days."

elif [[ "$m" == "2" ]]; then
    if (( (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0) )); then
        max=29
        echo "✔ Leap year detected: Feb has 29 days."
    else
        max=28
        echo "✔ Not a leap year: Feb has 28 days."
    fi
else
    echo "✘ Invalid month ($m)."
    is_valid=1
fi

if [[ -z "$y" ]] || (( y <= 0 )); then
    echo "✘ Invalid year."
    is_valid=1
else
    echo "✔ Year ($y) is valid."
fi

if [[ $is_valid -eq 0 ]]; then
    if [[ -n "$d" ]] && (( d >= 1 && d <= max )); then
        echo "✔ Day ($d) is valid."
    else
        echo "✘ Invalid day ($d). Range for this month is 1-$max."
        is_valid=1
    fi
fi

echo "-----------------------"
if (( is_valid == 0 )); then
    echo "RESULT: $d/$m/$y is a VALID date."
else
    echo "RESULT: INVALID date."
fi

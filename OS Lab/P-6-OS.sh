current_time=$(date +%H)
if [ $current_time -lt 12 ]; then
echo "Good morning!"
elif [ $current_time -lt 17 ]; then
echo "Good afternoon!"
else
echo "Good evening";
fi

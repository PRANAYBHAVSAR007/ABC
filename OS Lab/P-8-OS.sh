echo "Enter the first number "
read a
echo "Enter the second number"
read b
echo "Enter the third number"
read c
if [ $a -gt $b ] && [ $a -gt $c ]
then
  echo "First number is greater"
elif [ $b -gt $a ] && [ $b -gt $c ]
then
  echo "Second number is greater"
else
echo "Third number is greater"
fi

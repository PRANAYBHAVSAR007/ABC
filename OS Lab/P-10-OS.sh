echo " check the file is exit or not ";
echo " enter the file name ";
read a;
if [ -f $a ]
then
        echo "The file exist "
else
        echo "The file dose not exist "
        echo "Do you want to create that file? y/n "
        read b
        if [ $b = y ]
        then
                touch $a;
                echo $ls;
                echo "The file created successufully "
        else
                echo "Thank you "
        fi
fi

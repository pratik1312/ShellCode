##!/bin/bash -x
read -p "Enter the year: " y
#echo $y

if [ $((y % 400)) -eq 0 ]
then
	echo "$y is leap year"
elif [ $((y % 100)) -eq 0 ]
then
	echo "$y is not leap year"
elif [ $((y % 4)) -eq 0 ]
then
	echo "$y is leap year"
else
	echo $y "is not a leap year"
fi

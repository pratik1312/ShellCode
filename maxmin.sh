##!/bin/bash -x
d1=$(( RANDOM % 100 ))
echo "Enter first  number: " $d1
d2=$(( RANDOM % 100 ))
echo "Enter second number: " $d2
d3=$(( RANDOM % 100 ))
echo "Enter third number: " $d3
if [ "$d1" -gt "$d2" -a "$d1" -gt "$d3" ]
then
	echo "The max value is: " $d1
elif [ "$d2" -gt "$d1" -a "$d2" -gt "$d3" ]
then
	echo "The max value is: " $d2
else
	echo "The max value is: " $d3
fi
if [ "$d1" -lt "$d2" -a "$d1" -lt "$d3" ]
then
        echo "The min value is: " $d1
elif [ "$d2" -lt "$d1" -a "$d2" -lt "$d3" ]
then
        echo "The min value is: " $d2
else
        echo "The min value is: " $d3
fi

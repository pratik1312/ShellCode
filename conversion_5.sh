#!/bin/bash -x
read -p "Enter the inch value to convert: " in 
ft=$(( $in / 12 ))
echo "$in inch = $ft feet"

read -p "Enter first Value in feet: " n1
read -p "Enter second value in feet: " n2
n1=`echo "scale=3;$n1/3.28"|bc`
n2=`echo "scale=3;$n2/3.28"|bc`
area=`echo "scale=3;$n1*$n2"|bc`
echo "Rectangle plot of $n1 feet * $n2 feet = $area sqmeters "

echo "To calculate the area of 25 such plots in acres:"
acres=`echo "scale=5;25*$area"|bc`
echo $acres


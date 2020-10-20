##!/bin/bash -x
d1=$(( RANDOM % 100 ))
echo "Enter first  number: " $d1
d2=$(( RANDOM % 100 ))
echo "Enter second number: " $d2
d3=$(( RANDOM % 100 ))
echo "Enter third number: " $d3
d4=$(( RANDOM % 100 ))
echo "Enter fourth number: " $d4
d5=$(( RANDOM % 100 ))
echo "Enter fifth number: " $d5
sum=$(( $d1 + $d2 + $d3 + $d4 + $d5 ))
echo "The sum of the 5 numbers is: " $sum
avg=$(( $sum / 5 )) 
echo "The avg of the 5 numbers is: " $avg


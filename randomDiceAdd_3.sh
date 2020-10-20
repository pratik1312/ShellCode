#!/bin/bash -x
d1=$(( RANDOM % 6 +1 ))
echo "Enter first dice number: " $d1
d2=$(( RANDOM % 6 +1 ))
echo "Enter second dice number: " $d2
Total=$(( $d1 + $d2 ))
echo $Total

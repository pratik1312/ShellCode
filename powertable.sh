##!/bin/bash -x
read -p "Enter range : " n
for (( i=1; i<=(( 2**$n )); i++ ))
do
	val=$(( 2*$i ))
	echo $val
done

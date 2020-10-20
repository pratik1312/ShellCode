##!/bin/bash -x
read -p "Enter number between 1 to 100:" num
lb=1
ub=100
valid=true
while [ valid ]
do
	mid=$(( $lb + $ub ))
	m=$(( $mid/2 ))
	if [[ $num -eq $m ]]
	then
		echo "Entered number is : "$m
		break
	elif [[ $num -gt $m ]]
	then
		lb=$(( $m+1 ))
	else
		ub=$(( $m-1 ))
	fi
done

##!/bin/bash -x
#x=$(($(($RANDOM%10))%2))
#echo $x
MAXCOUNT=11
#count=0
#counter=0
headcount=0
tailcounter=0
while [[ $headcount -ne $MAXCOUNT && $tailcounter -ne $MAXCOUNT ]]
do
	x=$(($(($RANDOM%2)) + 1))
#	echo $x
	if [ $x -eq 1 ]
	then
		echo "H";
		((headcount++))
	else
		echo "T"
		((tailcounter++))
	fi
done
echo "Head Count is : " $headcount
echo "Tail Count is : "$tailcounter
if [ $headcount -eq $MAXCOUNT ]
then
	echo "Head Wins"
else
	echo "Tail wins"
fi

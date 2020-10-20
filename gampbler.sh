##!/bin/bash -x
start=100
wincount=0
losscount=0
betcount=0
while (($start<200 && $start>0))
#while [[ $start -gt 200 && $start -gt 0 ]]
do
	betcount=$((betcount+1))
	x=$((RANDOM%2))
	if(($x==0))
	then
		start=$((start+1))
		wincount=$((wincount+1))
	else
		start=$((start-1))
		losscount=$((losscount+1))
	fi
	if ((start==200))
	then
		echo "You won"
	elif ((start==0))
	then
		echo "You loss"
	fi
done
echo "Number of won $wincount"
echo "NUmber of loss $losscount"
echo "Number of bets $betcount"

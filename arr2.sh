##!/bin/bash -x
MAXCOUNT=10
count=1
while [ "$count" -le $MAXCOUNT ]
do
	a[$count]=$((RANDOM%1000))
	if [[ a[$count] -ge "100" &&  a[$count] -le "999" ]]
        then
        ((count++))
        fi
done
echo "The given array is : ${a[@]}"
echo "The size of array is :${#a[@]}"
for (( i=${#a[@]};i>=0; i-- ))
do
	for (( j=1; j<=$i; j++ ))
	do
		if [[ ${a[j-1]} -gt ${a[j]} ]]
			then
				temp="${a[j-1]}"
				a[j-1]="${a[j]}"
				a[j]="$temp"
		fi
	done
done
echo "The sorted array is :"
echo ${a[*]}
#echo ${ARR1[@]:(-1)}
echo "The second smallest element is :" ${a[2]}
#echo "The second largest element is : " ${a[@]:(-1)}
echo "The second largest element is : " ${a[-2]}


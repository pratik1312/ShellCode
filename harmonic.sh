##!/bin/bash -x
read -p "Enter value of series: " n
sum=0
for(( i=1; i<=n; i++))
do
	sum=`expr $sum + \( 1000 / $i \)`
#	echo $sum
done
#echo "Sum of n series is: " $sum
i=1
while [ $i -le 4 ]
do
a=`echo $sum | cut -c $i`
echo -e "$a\c"
if [ $i -eq 1 ]
then
echo -e ".\c"
fi
i=`expr $i + 1`
done
#echo "Sum of n seris is: " $sum


##!/bin/bash -x
read -p "Enter the original number: " n
reverseN=0
origin=$n
while [ $n -ne 0 ]
do
	remainder=`echo "$n%10"|bc`
	reverseN=`echo "$reverseN*10+$remainder"|bc`
	n=`echo "$n/10"|bc`
done
if [ $origin -eq $reverseN ]
then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi



#n=12321
#rev=$(echo $n | rev)
#if [ $n -eq $rev ]
#then
#   echo "Number is palindrome"
#else
#   echo "Number is not palindrome"
#fi

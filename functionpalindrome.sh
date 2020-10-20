##!/bin/bash -x
prime()
{
for((i=2; i<=$reverseN/2; i++))
do
  if [ $(($reverseN%i)) -eq 0 ]
  then
    echo "$reverseN is not a prime number."
    exit
  fi
done
echo "$reverseN is a prime number."
}
palindrome(){
reverseN=0
origin=$n
while [ $n -ne 0 ]
do
	remainder=`echo "$n%10"|bc`
	reverseN=`echo "$reverseN*10+$remainder"|bc`
	n=`echo "$n/10"|bc`
done
if [[ $origin -eq $reverseN ]]
then
        echo "Palindrome"
else
        echo "Not Palindrome"
fi
}
read -p "Enter number to check: " n
palindrome $origin
#prime $origin
prime $reverseN

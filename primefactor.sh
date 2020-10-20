##!/bin/bash -x
isprime=0
index=0
read -p "Enter number: " num
for (( i=2;i<=num;i++ ))
do
	if [ `expr $num % $i` -eq 0 ]
	then
	   isprime=1
	   for (( j=2;j<=i/2;j++ ))
	   do
	       if [ `expr $i % $j` -eq 0 ]
	       then
			isprime=0
	       fi
	   done
           if [ $isprime -eq 1 ]
           then
   	     echo $i
	   fi
         fi
done


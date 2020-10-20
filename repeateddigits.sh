##!/bin/bash -x
c=0
for i in {1..100}
do
   div=$i%11
   if [[ $div -eq "0" ]]
   then
#	echo $i
	array[((c++))]=$i
    fi
done
echo ${array[@]}

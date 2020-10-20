#!/bin/bash
read -p "Enter number to get factorial: " n
fact=1 
counter=$n
while [[ $counter -gt 0 ]]
 do
   fact=$(( $fact * $counter ))
   counter=$(( $counter - 1 ))
done
echo $fact


arr=(1 1 -2 9 10 4 3 -7 8 7 9 4 -17 )
sum=0 
#func()
{
for ((i=0; i<=${#arr[@]}-2; i++))
do
	for ((j=$i+1; j<=${#arr[@]}-1; j++))
	do
		for ((k=$j+1; k<=${#arr[@]}; k++))
		do
			if [[ arr[$i]+arr[$j]+arr[$k] -eq $sum ]]
			then
				echo "Triplet is : ${arr[$i]},${arr[$j]},${arr[$k]}"
			fi
		done
	done
done
}
#func "${arr[@]}"


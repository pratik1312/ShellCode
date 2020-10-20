##!/bin/bash -x
declare -A Dice
Dice[one]=0
Dice[two]=0
Dice[three]=0
Dice[four]=0
Dice[five]=0
Dice[six]=0
while ( true )
do
	a=`echo $(($RANDOM%6+1))`
	case $a in
		"1") Dice[one]=$(( ${Dice[one]} + 1 ));;
		"2") Dice[two]=$(( ${Dice[two]} + 1 ));;
		"3") Dice[three]=$(( ${Dice[three]} + 1 ));;
		"4") Dice[four]=$(( ${Dice[four]} + 1 ));;
		"5") Dice[five]=$(( ${Dice[five]} + 1 ));;
		"6") Dice[six]=$(( ${Dice[six]} + 1 ));;
	esac
	for b in ${!Dice[@]}
	do
		if [[ ${Dice[$b]} -eq 10 ]]
		then
			arr=( 'one' 'two' 'three' 'four' 'five' 'six' )
			arr1=( ${Dice[one]} ${Dice[two]} ${Dice[three]} ${Dice[four]} ${Dice[five]} ${Dice[six]} )
			min=${arr1[0]}
			for i in "${arr1[@]}"
			do
				if [[ "$i" -lt "$min" ]]
				then
					min="$i"
				fi
			done
			echo -e "one:${Dice[one]}\ntwo:${Dice[two]}\nthree:${Dice[three]}\nfour:${Dice[four]}\nfive:${Dice[five]}\nsix:${Dice[six]}"
			echo "$b ${Dice[$b]} is the maximum value"
			for j in "${arr[@]}"
			do
				case $min in
					"${Dice[$j]}") echo "$j:${Dice[$j]} is minimum" ;;
				esac
			done
			exit
		else
			continue
		fi
	done
done

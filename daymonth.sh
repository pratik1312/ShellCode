read -p "Enter the Date " d
read -p "Enter the Month " m
if [[ $m -eq "3" && $d -gt "20" || $m -gt "3" ]]
then
	if [[ $m -eq "6" && $d -lt "20" || $m -lt "6" ]]
	then
		echo "True"
	else
		echo "False"
	fi
else
	echo "False $m / $d"
fi


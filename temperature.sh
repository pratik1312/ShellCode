echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
if [ $choice -eq 1 ]
then
	echo -n "Enter temperature (C) : "
	read tc
	if [ $tc -ge 0 -a $tc -le 100 ]
	then
	tf=$(echo "scale=2;((9/5) * $tc) + 32" | bc)
	echo "$tc C = $tf F"
	else
		echo "Enter between 0 to 100"
	fi
elif [ $choice -eq 2 ]
then
	echo -n "Enter temperature (F) : "
	read tf
	if [ $tf -ge 32 -a $tf -le 212 ]
        then
        tc=$(echo "scale=2;(5/9)*($tf-32)" | bc)
	echo "$tf F = $tc C"
	else
		echo "Enter between 32 to 212"
	fi
else
	echo "Please select 1 or 2 only"
	exit 1
fi

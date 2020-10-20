read -p "Enter start range: " m
read -p "Enter end range number: " n
echo "The range is from $m to $n"
while [ $m -le $n ]
do
flag=1
for (( i=2;i<m;i++ ))
do
	if [ `expr $m % $i` -eq 0 ]
	then
		flag=0
		break
	fi
done
if [ $flag -eq 1 ]
then 
	echo $m
fi
	m=`expr $m + 1`

done

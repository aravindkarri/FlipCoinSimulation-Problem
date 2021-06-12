#!/bin/bash -x

echo "Welcome to FlipCoinSimulator program"

headCount=0
tailCount=0

while [[ $headCount -ne 21 && $tailCount -ne 21 ]]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		((headCount++))
		echo "head is winner"
	else
		((tailCount++))
		echo "tail is winner"
	fi
done
echo "head won $headCount times"
echo "tail won $tailCount times"

if [[ $headCount -eq 21 && $tailCount -eq 21 ]]
then
	echo "Its tie"
elif [ $headCount -eq 21 ]
then
	var=$(($headCount-$tailCount))
	echo "Head won by $var diff "
else
	var=$(($tailCount-$headCount))
	echo "Tail won by $var diff "
fi




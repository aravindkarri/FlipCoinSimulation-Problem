#!/bin/bash -x

echo "Welcome to FlipCoinSimulator program"

headCount=0
tailCount=0

for ((i=0;i<10;i++))
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
echo "Head won $headCount times"
echo "Tail won $tailCount times"




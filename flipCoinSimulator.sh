#!/bin/bash -x

randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 1 ]
then
	echo "Head is winner"
else
	echo "Tail is winner"
fi

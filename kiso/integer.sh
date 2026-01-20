#!/usr/bin/bash
echo "Input number: " $1

if [ $1 -gt 0 ]
then
	echo "positive"
elif [ $1 -lt 0 ]
then
	echo "Negative"
else
	echo "zero"
fi

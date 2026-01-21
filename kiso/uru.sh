#!/usr/bin/bash

if (( $# < 1 ))	#引数の数($#)が１より少ない場合
then
	echo "ERROR: 西暦年を指定してください"
	exit 0
fi

if (( $1 % 400 == 0 )) 	
then
	echo "leap year"
else
	if (( $1 % 100 == 0))
	then
		echo $1
	else
		if (( $1 % 4 == 0)) 
		then
			echo "leap year"
		else
			echo $1
		fi
	fi
fi



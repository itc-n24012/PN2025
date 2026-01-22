#!/bin/sh

#引数
if [ $# -ne 1 ]
then
	echo "$0 数値"
	exit 1
fi

num=$1

#偶数・奇数
if [ $((num % 2)) -eq 0 ]; then
  echo "偶数です"
else
  echo "奇数です"
fi


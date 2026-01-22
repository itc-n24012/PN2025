#!/usr/bin/bash

num=0
while [ $num -ne $1 ]
do
	echo $num
	num=$((num + 1))

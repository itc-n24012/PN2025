#!/usr/bin/bash

if [ $# -lt 1 ] #引数のチェック
then
	echo "引数にファイルを指定してください"
	exit 0
fi

#ファイルの読み込みと表示
while read line
do
	echo $line
done < $1

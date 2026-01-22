#!/usr/bin/bash

if [ $# -lt 2 ] #引数のチェック
then
	echo "引数に2つのファイルを指定してください"
	echo "例) ./filecomp.sh file1 file2"
	exit 0
fi

#ファイルの比較
cmp -s $1 $2

if [ $? -eq 0 ]
then
	echo "内容は同一です"
elif [ $? -eq 1 ]
then
	echo "内容は異なっています"
elif [ $? -eq 2 ]
then
	echo "パーミッションのエラーです"
else
	echo "何らかのエラーです"
fi

#!/bin/sh

#引数
if [ $# -ne 1 ]; then
  echo "使い方: $0 数値"
  exit 1
fi

num=$1
i=1

#指定回数だけ表示
while [ $i -le $num ]; do
  echo "$num"
  i=$((i + 1))
done


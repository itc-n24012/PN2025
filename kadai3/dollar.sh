#!/bin/sh

#引数
if [ $# -ne 1 ]; then
  echo "使い方: $0 金額(円)"
  exit 1
fi

yen=$1
rate=158

#ドル換算
dollar=$((yen / rate))

echo "およそ${dollar}ドルです"


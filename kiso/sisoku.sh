#!/usr/bin/bash
echo -n "和: "
expr $1 + $2
echo -n "差: "
expr $1 - $2
echo -n "積: "
expr $1 \* $2
echo -n "商: "
expr $1 / $2
echo -n "剰余: "
expr $1 % $2

# 割り算は整数商のみ(小数点以下は出しません)
# echo -n で改行させなくできる

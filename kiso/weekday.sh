#!/usr/bin/bash

# $1 -> 年 $2 -> 月 $3 -> 日	*年は西暦で指定すること

#引数のチェック
if (( $# < 3 )) #引数の数($#)が3より少ない場合
then
	echo "ERROR: 引数が3つ必要です"
	echo "	例:./weekday.sh 1968 12 12"
	exit 0
fi

# 1月と2月の特別ルール
if (($2 < 3))
then
 month=$(($2 + 12))
 year=$(($1 - 1))
fi

# 100年ごとの修正ルール
leap100=$((year % 100)) #うるう年ではない年 (除閏)の概算
century=$((year / 100)) #世紀の経過数

# 通日の算出
term1=$day #経過日
term2=$(((13 * (month + 1)) / 5))	#月の経過日
term3=$leap100 #100年ごとの除閏日数
term4=$((leap100 / 4)) #400年ごとの閏日数
term5=$((century / 4)) #
term6=$((2 * century)) #

# 通日の算出
days=$((year + ( year / 4 ) - ( year / 100 ) + ( year / 400 ) + ( month * 13 + 8 ) /5 + day ))
# 曜日の算出
week=$((day2day % 7))
echo $week

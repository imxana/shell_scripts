#!/usr/local/bin/bash
#
# @file match_palindrome.sh
# @author xana.awaken@gmail.com
# @date 2016-09-06
#

# 找出给定文件中的会文字
if [ $# -ne 2 ] ;
then
    echo "Usage: $0 <filename> <string_length>"
    exit -1
fi

filename=$1

basepattern='/^\(.\)'

count=$(($2/2))

for ((i=1;i<$count;i++))
do 
    basepattern=$basepattern'\(.\)' ;
done

if [ $(($2/2)) -ne 0 ];
then 
    basepattern=$basepattern'.' ;
fi

for (( count;count>0;count-- ))
do
    basepattern=$basepattern'\'"$count" ;
done

basepattern=$basepattern'$/p'
sed -n "$basepattern" $filename


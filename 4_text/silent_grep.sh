#!/usr/local/bin/bash
#
# test if the text exists in the file
#
# @file silent_grep.sh
# @author xana.awaken@gmail.com
# @date 2016-09-05
#


if [ $# -ne 2 ];
then 
    echo "usage: $0 [ match_text ] [ filename ]"
fi

match_text=$1
filename=$2

grep -q $match_text $filename 2> /dev/null

if [ $? -eq 0 ];
then
    echo "The text exists in the file"
else
    echo "The text does not exist in the file"
fi


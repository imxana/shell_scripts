#!/bin/bash
#
# check if the word is in the dictionary.
#
# @file checkword.sh
# @author xana.awaken@gmail.com
# @date 2016-09-01
#

word=$1
dic=./stext
grep "^$1$" "$dic" -q
if [ $? -eq 0 ]; then
    echo $word is a dictionary word;
else
    echo $word is not a dictionary word;
fi



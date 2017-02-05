#!/bin/bash
#
# @file extension.sh
# @author xana.awaken@gmail.com
# @date 2016-08-30
#


VAR=hack.fun.book.txt

# use greed_match

echo ${VAR%.*}  # hack.fun.book
echo ${VAR%%.*} # hack
echo ${VAR#*.}  # fun.book.txt
echo ${VAR##*.} # txt



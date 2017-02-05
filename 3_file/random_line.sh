#!/usr/local/bin/bash
#
# @file random_line.sh
# @author xana.awaken@gmail.com
# @date 2016-09-02
#

f=A.txt
l=`awk 'END{print NR}' $f`
r=`echo "$RANDOM%$l+1" | bc`

sed -n $[r]p $f

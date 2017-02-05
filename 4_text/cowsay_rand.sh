#!/usr/local/bin/bash
#
# @file cowsay_rand.sh
# @author xana.awaken@gmail.com
# @date 2016-09-06
#

# for the sort(low version) has no option -R, so I have
# to write this fucking method

f=/tmp/cowsay_rand 
cowsay -l | tail -n +2 \
    | egrep -o "\b[[:alpha:]\.\-]+\b" > $f
l=`awk 'END{print NR}' $f`
r=`echo "$RANDOM%$l+1" | bc`
rd=`sed -n $[r]p $f`
echo $rd

# and this method would be remove

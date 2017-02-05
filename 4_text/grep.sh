#!/usr/local/bin/bash
#
# @file grep.sh
# @author xana.awaken@gmail.com
# @date 2016-09-05
#

# find a word in txt, return the line
# grep "浙江省" ip.txt 

# or use color mode
grep "广东省" ip.txt --color=auto


# expr -o only output the match part 
grep -o -E "..省" ip.txt 



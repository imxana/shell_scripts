#!/bin/bash
#
# @file comm.sh
# @author xana.awaken@gmail.com
# @date 2016-09-01
#

sort A.txt -o A.txt; sort B.txt -o B.txt;

# -1: del only a
# -2: del only b
# -3: del in common

# print the items in common
comm -12 A.txt B.txt 

echo 
echo ==========
echo

# print non-repeat items
# im Mac OS, I use '<Control+V><TAB character>' to replace '\t'
# awk  '{gsub("/","\t",$0); print;}' filename, may works, too.
comm -3 A.txt B.txt | sed 's/^	//' #'s/^\t//'



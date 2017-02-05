#!/usr/local/bin/bash
#
# @file head.sh
# @author xana.awaken@gmail.com
# @date 2016-09-02
#

# prinf 10 lines
head remove_duplicates.sh 
# cat remove_duplicates.sh | head

# prinf 3 lines
head -n 3 remove_duplicates.sh

# print all except last 3lines
head -n -3 remove_duplicates.sh


# prinf 2nd line
sed -n 2p A.txt

# prinf 2nd~3rd lines
sed -n 2,3p A.txt

# prinf random lines
# to check random_line.sh, for sort -R is not available


# print last 10 lines
tail remove_duplicates.sh 
tail -n 10 remove_duplicates.sh

# print all except first 3 lines
tail -n +4 remove_duplicates.sh

# print 6~20 lines
seq 20 | tail -n +6



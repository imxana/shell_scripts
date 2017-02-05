#!/bin/bash
#
# @file is_sorted.sh
# @author xana.awaken@gmail.com
# @date 2016-08-30
#

sort -c ip.txt

if [ $? -eq 0 ];then
    echo Sorted;
else
    echo Unsorted;
fi

# is sorted by number, using [ sort -nc ]

# rank by 7th items
# sort -k 7 ip.txt

# rank by 1st items reverse
# sort -nrk 1 ip.txt

# -n(by number) -r(reverse) -k(key)[col]
# <man sort> for more

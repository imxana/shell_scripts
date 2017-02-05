#!/usr/local/bin/bash
#
# @file word_freq.sh
# @author xana.awaken@gmail.com
# @date 2016-09-05
#

if [ $# -ne 1 ];
then
    echo "Usage: $0 <filename>";
    exit -1
fi

filename=$1

egrep -o "\b[[:alpha:]]+\b" $filename | \
awk '{ count[$0]++ } 
END{ printf("%-14s%s\n","Word","Count") ;
for ( ind in count)
{ printf("%-14s%d\n",ind,count[ind]); }
}'

# every line run the {}
# 

#!/usr/local/bin/bash
#
# @file iteration.sh
# @author xana.awaken@gmail.com
# @date 2016-09-06
#

## iter the line
#while read line;
#do 
#    echo $line;
#done < ip.txt
#
## cat ip.txt | ( while read line; do echo $line; done)
#
#
#
## iter the words 
#for word in $line;
#do echo $word;
#done
#
## iter the characters 
#for((i=0;i<${#word};i++))
#do
#    echo ${word:i:1};
#done
cowsay -l | tail -n +2 | ( while read line;do for word in $line; do echo $word;done;done)  










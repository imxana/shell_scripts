#!/usr/local/bin/bash
#
# @file awk.sh
# @author xana.awaken@gmail.com
# @date 2016-09-06
#

# test: count file lines
awk 'BEGIN { i=0 } { i++ }\
    END{ print i}' ip.txt
#or
awk 'END{ print NR }' ip.txt # NR is line_number
#more for word_freq.sh



# out ip and port
awk '{ print $1, $2}' ip.txt

# print files rights
ls -l | awk '{ print $1" : " $9 }'

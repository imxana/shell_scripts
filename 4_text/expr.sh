#!/usr/local/bin/bash
#
# @file expr.sh
# @author xana.awaken@gmail.com
# @date 2016-09-05
#

# match all the words
 grep -E -o "[a-zA-z]+" ip.txt
#grep -E -o "\b[[:alpha:]]+\b" ip.txt

# match ip
grep -E -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" ip.txt

# match email address
egrep -o '[A-Za-z0-9.]+@[A-Za-z0-9.]+\.[A-Za-z]{2,4}' expr.sh

#!/usr/local/bin/bash
#
# @file slide.sh
# @author xana.awaken@gmail.com
# @date 2016-09-07
#

string=abcdefghijklmnopqrstuvwxyz
echo ${string:4}
echo ${string:4:8}

echo ${string:(-1)}
echo ${string:(-2):2}


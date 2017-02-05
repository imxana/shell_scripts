#!/bin/bash
#
# @file tee.sh
# @author xana.awaken@gmail.com
# @date 2017-01-19
#
cat s* | tee out.txt | cat -n

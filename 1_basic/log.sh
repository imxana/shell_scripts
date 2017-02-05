#!/bin/bash
#
# @file log.sh
# @author xana.awaken@gmail.com
# @date 2016-09-01
#


# write stdout and stdout to log
cmd='ls +'

#$cmd > log 2>&1
$cmd &> log

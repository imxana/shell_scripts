#!/bin/bash
#
# @file IFS.sh
# @author xana.awaken@gmail.com
# @date 2009-06-25
#

data="name,sex,rollon,location"

oldIFS=$IFS
IFS=,
for item in $data;
do echo Item: $item
done

IFS=$oldIFS

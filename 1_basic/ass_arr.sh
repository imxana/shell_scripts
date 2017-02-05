#!/bin/bash
#
# @file ass_arr.sh
# @author xana.awaken@gmail.com
# @date 2017-01-31
#


# notice: bash > 4.0


declare -A fruits_value
fruits_value=([apple]='100 dollars' [orange]='150 dollars')

echo "Apple costs ${fruits_value[apple]}"

echo ${!fruits_value[*]}
echo ${fruits_value[*]}

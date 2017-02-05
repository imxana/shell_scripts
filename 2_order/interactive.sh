#!/bin/bash
#
# @file interactive.sh
# @author xana.awaken@gmail.com
# @date 2016-09-01
#

read -p "Enter number:" no;
read -p "Enter name:" name;
echo You have entered $no, $name

# echo -e "1\nhello\n" | ./interactive.sh
# or
# ./interactive.sh < input.data

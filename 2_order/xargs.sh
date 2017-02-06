#!/bin/bash
#
# @file xargs.sh
# @author xana.awaken@gmail.com
# @date 2017-02-07
#

echo "format the stdin"
cat stext | xargs
echo

echo "1 to many"
cat stext | xargs | xargs -n 2
echo

echo "divide and 1tomany"
echo "a.txtXa.txtXa.txtXa.txtXa.txt" | xargs -d X -n 2

echo "provide 2 args to script"
cat args.txt | xargs -n 2 ./cecho.sh
echo

echo "and I need a fixed args (-I [the string])"
cat args.txt | xargs -I {} ./cecho.sh -p {} -l
echo

echo 'find -print0 and xargs -0 is a good couple~'
echo 

echo "count line of files (-0 means \\0 is the sign)"
find . -type f -name "*.sh" -print0 | xargs -0 wc -l
echo

echo 'the subshell hack'
cat args.txt | ( while read arg; do echo $arg; done )
echo ' the same way:'
cat args.txt | xargs -I {} echo {}
echo

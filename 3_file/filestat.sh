#!/usr/local/bin/bash
#
# @file filestat.sh
# @author xana.awaken@gmail.com
# @date 2016-09-01
#

if [ $# -ne 1 ];
then
    echo Usage: $0 basepath;
    echo
fi
path=$1

declare -A statarray; # -A:array

while read line;
do 
    ftype=`file -b "$line"`
    let statarray["$ftype"]+=1;

done< <(find $path -type f -print 2> /dev/null)

# notes:
# done<<(find $path -type f -print); is importent here:
# the logic is:
# while read line;
# do something
# done< filenmame


echo ============ File types and counts ===============
for ftype in "${!statarray[@]}";
do
    echo $ftype : ${statarray["$ftype"]}
done


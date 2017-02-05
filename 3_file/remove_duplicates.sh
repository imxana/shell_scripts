#!/bin/bash
#
# @file remove_duplicates.sh
# @author xana.awaken@gmail.com
# @date 2016-09-01
#

ls -lS | awk 'BEGIN {
    getline;getline;
    name1=$8; size=$5
}
{ name2=$8;if (size=$5)
{
    "md5 "name1 | getline; csum1=$1;
    "md5 "name2 | getline; csum2=$2;
    if ( csum1==csum2 )
        { print name1; print name2 }
};
size=$5; name1=name2;
}' | sort -u > duplicate_files

cat dDuplicate_files | xargs -I { } md5 { } | sort | uniq -w 32 | awk '{ print "^"$2"$" }' | sort -u > duplicate_files

echo Removing..
comm -23 duplicate_files duplicate_sample | tee /dev/stderr | xargs 
rm
echo Removed duplicate files successfully.

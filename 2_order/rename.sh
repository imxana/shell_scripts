#!/bin/bash
#
# This script help you rename jpg/png file. 
#
# @file rename.sh
# @author xana.awaken@gmail.com
# @date 2016-09-01
#

count=1;
for img in *.[Jj][Pp][Gg] *.[Pp][Nn][Gg}
do
    new=image-$count.${img##*.}

    mv "$img" "$new" 2> /dev/null

    if [ $? -eq 0 ];
    then

        echo "Renaming $img to $new"
        let count++
    fi
done

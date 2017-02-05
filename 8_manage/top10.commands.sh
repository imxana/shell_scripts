#!/usr/local/bin/bash
#
# @file top10.commands.sh
# @author xana.awaken@gmail.com
# @date 2016-09-13
#

printf "COMMAND\tCOUNT\n" ;

cat ~/.bash_history | awk '{ list[$1]++; } \
    END{
        for( i in list){
            printf("%s\t%d\n", i, list[i]); 
        }
    }' | sort -nrk 2 | head

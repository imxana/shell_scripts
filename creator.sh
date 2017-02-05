#!/bin/bash
#
# NAME
#        creator - a script to help create the .sh file
#
# SYNOPSIS
#        creator [ -ndv ]
#
# Description
#        -n     necessary, the name of the file you create.
#
#        -d     the initialization path you want, the default value is
#               current path, the '.'
#
#        -v     if you want to edit the file immediately by vim, use -v
#               option
#
#        -h     for help
#
# AUTHOR
#        XANA (xana.awaken@gmail.com)
#
#
#                    August 30, 2016
#

# env setting
bash_dir=$(which bash | head -1)
author=xana.awaken@gmail.com
    
# check the editor
command -v nvim &> /dev/null
if [ $? == 0 ]; then
    editor=nvim
else
    editor=vim
fi


usage()
{
    echo 'Usage: [-v] [-d <dir>] [-n <filename>]'
    exit 0
}

dir='.' # "$(pwd)"
name=''
edit=false

while getopts "n:d:v" arg
do
    case $arg in
        n) name=$OPTARG ;;
        d) dir=$OPTARG ;;
        v) edit=true ;;
        h) usage ;;
        /?) usage ;;
    esac
done


if [ -d "$dir" ]
then
    if [ -n "$name" ]
    then
        dirn="$dir/$name"
        if [ -f "$dirn" ]
        then
            echo "$0: $dirn: File has been existed"
            exit 1
        fi
        touch $dirn
        chmod u+x $dirn
        echo "#!$bash_dir"              >> $dirn
        echo "#"                        >> $dirn
        echo "# @file $name"            >> $dirn
        echo "# @author $author"        >> $dirn
        echo "# @date `date +%Y-%m-%d`" >> $dirn
        echo "#"                        >> $dirn
        if $edit
        then
            $editor $dirn
        else
            echo "$dirn is created~"
        fi
    else
        usage
    fi
else
    echo "$0: $dir: No such directory"
fi


exit 0

#!/bin/bash
#
# @file find.sh
# @author xana.awaken@gmail.com
# @date 2016-08-30
#

echo 'find by name (ignore the case -iname)'
find . -iname "File.py" -print
echo

echo 'find by ext (or -o)'
find . \( -name "*.txt" -o -name "*.py" \) -print
echo

echo 'find by path ext (-path)'
find .. -path "*.txt" -print
echo 

echo 'the similiar way (-regex) (-mindepth and -maxdepth)' 	
find .  -maxdepth 1 -regex ".*\(\.py\|\.txt\)$"
echo 

echo 'deny argument (!)'
find . ! -name "*.sh" -print
echo

echo 'list all dirs, prune the git'
find .. ! -path "*.git*" -type d -print
echo

echo 'list all files'
find .. \( -name ".git" -prune \) -o \( -type f -print \)
echo

echo 'list all links' 
find .. -type l -print
echo



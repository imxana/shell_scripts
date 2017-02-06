#!/bin/bash

echo "enter your pwd in 2 sec:"
echo -n Password:
read -t 2 -s var
echo

if [ -n "$var" ];then #if [ ${#var} -gt 0 ]; then
    echo You entered: $var
else
    echo Enter aborted.
fi

echo -e "Enter password:"
stty -echo # not showing
read password
#stty echo # showing
echo
echo $password read.

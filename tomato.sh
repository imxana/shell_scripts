#!/bin/bash
#
# NAME
#        tomato - a time schedule alarm
#
# SYNOPSIS
#        tomato [ -hms ]
#
# Description
#        -h     set hours, int number, value must be greater than 0
#
#        -m     minutes, int number, value is between 0 and 59
#
#        -s     seconds, int number, value is between 0 and 59
#
# AUTHOR
#        XANA (xana.awaken@gmail.com)
#
#
#                    September 4, 2016
#


# you can set the way you like
alarm()
{
    # env setting
    # works in Mac_OS
    if [ $(uname) = 'Darwin' ];then
        rand_cow=`./4_text/cowsay_rand.sh` 
        tmp_file=/tmp/create_out
        fortune -s > $tmp_file; 
        cowsay -f $rand_cow < $tmp_file; say -v Alex< $tmp_file;
    # works in Ubuntu
    else #if [ `uname` = 'Linux' ];
        cowsay -f "$(ls /usr/share/cowsay/cows | sort -R | head -1)" "$(fortune -s)"
    fi
}

usage()
{
    echo 'Usage: [ -hms ] <time>'
    exit 1
}

t=( 0 0 0 ) # input_hms_array

while getopts "h:m:s:" arg
do
    case $arg in
        h) t[0]=$OPTARG;;
        m) t[1]=$OPTARG;;
        s) t[2]=$OPTARG;;
        /?) usage;;
    esac
done

#set_time=$(( ${t[0]}*3600 + ${t[1]}*60 + ${t[2]} ))
#[ $set_time -le 0 ] && usage

#tput sc # save pos

#while [ $set_time -ge 0 ];
#do
    #tput rc # reset pos
    #tput el # del to line end
    ##tput ed # del to device end
    #echo -n "Tomato: the rest seconds is: $set_time";
    #let set_time--; sleep 1;
#done

#tput rc;tput el;alarm; exit 0



[ ${t[0]} -ge 0 ] && 
[ ${t[1]} -ge 0 -a ${t[1]} -lt 60 ] && 
[ ${t[2]} -ge 0 -a ${t[2]} -lt 60 ] || 
usage

tput sc # save pos
while true;
do
    tput rc # reset pos
    tput el # del to line end
    #tput ed # del to device end
    echo -n "$0: Countdown:"
    if [ ${t[0]} -gt 0 ];then
        echo -n " ${t[0]}h";
    fi
    if [ ${t[1]} -gt 0 ];then
        echo -n " ${t[1]}m";
    fi
    echo -n " ${t[2]}s";

    if [ ${t[2]} -gt 0 ];then
        t[2]=$((${t[2]}-1))
    elif [ ${t[1]} -gt 0 ];then
        t[1]=$((${t[1]}-1))
        t[2]=59
    elif [ ${t[0]} -gt 0 ];then
        t[0]=$((${t[0]}-1))
        t[1]=59
        t[2]=59
    else break;
    fi

    sleep 1;
done


tput rc
tput el
alarm
exit 0





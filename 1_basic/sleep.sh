#!/bin/bash
# this file is use 'tput' & 'sleep' to count

echo -n Count:
tput sc # save pos

count=0
while true;
do
    if [ $count -lt 10 ];
    then let count++;
        sleep 1;
        tput rc # reset pos
        tput el # del to line end
        #tput ed # del to device end
        echo -n $count..;
    else exit 0;
    fi
done

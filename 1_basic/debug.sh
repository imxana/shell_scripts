#!/bin/bash

# use following order to debug these.. things:
# _DEBUG=on ./debug.sh

function DEBUG()
{   
    # ':' is 'do nothing'
    [ "$_DEBUG" == "on" ] && $@ || :
}

for i in {1..10}
do
    DEBUG echo -n $i
done

#for i in {0..3}
#do
#    set -x
#    echo $i
#    set +x
#done
#echo Script executed.

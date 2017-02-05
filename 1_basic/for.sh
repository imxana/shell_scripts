#!/bin/bash

list=( what the fuck  )
l=${#list}

for item in ${list[@]};do
    echo $item
done


for((i=0;i<$l-1;i++));
do
    echo $i:${list[$i]};
done


i=0
while [ $i -lt $[$l-1] ]; do
    echo $i:${list[$i]};
    let i++;
done




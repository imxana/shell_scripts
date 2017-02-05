#!/bin/bash

arr=(1 2 3)
echo ${arr[1]}

arr2[0]='fuck'
arr2[1]='bicth'
arr2[2]=0

echo ${arr2[2]}
echo ${arr2[${arr2[2]}]}

echo ${arr[*]} 
echo ${arr[@]}
echo ${#arr[@]}



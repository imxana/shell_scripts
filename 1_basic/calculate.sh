#!/bin/bash

let no1=1
let no2=3

let result=no1+no2
echo result:$result

no=100
let no++
let no--
let no+=6
echo no:$no

result=$[no1+no2]
echo $result

echo $[$no1+3]
echo $(($no1+50))
echo `expr 4 + 67`
echo $(expr $no1 + 5)

echo "$no1+$no2"

echo "$no1+$no2" | bc

no=100
echo "obase=2;$no"|bc
no=1100100
echo "obase=10;ibase=2;$no"|bc


echo "sqrt(100)"|bc
echo "10^10"|bc





# number
# 可以用 -eq、 -ne、-lt、 -le、 -gt 或 -ge 比较算术值，它们分别表示等于、不等于、小于、小于等于、大于、大于等于。

# string
# 可以分别用操作符 =、 !=、< 和 > 比较字符串是否相等、不相等或者第一个字符串的排序在第二个字符串的前面或后面。单目操作符 -z 测试 null 字符串，如果字符串非空 -n 返回 True（或者根本没有操作符

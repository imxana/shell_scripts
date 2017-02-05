#!/bin/bash
#
# @file global.sh
# @author xana.awaken@gmail.com
# @date 2017-01-19
#


function test() {
    #设置d_o_f为局部变量
    local d_o_f
    #设置d_i_f为局部变量
    local d_i_f
    #输出变量d_o_f
    echo "d_o_f:" $d_o_f
    #函数内定义变量
    d_i_f="defined in function"
    d_o_f="modified in function"
    echo "d_i_f:" $d_i_f
    echo "d_o_f:" $d_o_f
}
 
echo "---out fucntion---"
#函数外部定义变量d_o_f
d_o_f="defined out function"
echo "d_o_f:" $d_o_f
echo "---in function---"
test
echo "---out function---"
echo "d_i_f:" $d_i_f
echo "d_o_f:" $d_o_f

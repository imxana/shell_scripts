#!/bin/bash


if true;then
    if true;then
        echo Yeah
    fi
fi

if test true; then
    echo yes
fi


if false
then
    echo 1
elif false
then
    echo 2
elif true
then
    echo Yeahx2
else
    echo 4
fi

true && echo true
false || echo false

# if cod;then cmd1;else cmd2;fi
true && echo true || echo false
false && echo true || echo false


[ 0 ] && echo 1     # 0 is true
[ "" ] || echo 2    # "" is false

# string
str1=qwe
str2=qwe
[[ $str1 = $str2 ]] && echo str equel
str2=''
if [[ -n $str1  ]] && [[ -z $str2 ]];
then 
    echo str1 non-empty and str2 empry
fi

[ 2 -ne 2 -a 3 -gt 2 ] && [ 0 ] || echo 3 


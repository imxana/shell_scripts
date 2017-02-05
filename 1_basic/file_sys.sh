#!/bin/bash

fpath="/etc/passwd"
if [ -e $fpath ];then
    echo File existed;
else
    echo Does not existed;
fi

# [ -f $file_var ]: is file of dir
# [ -x $var ]: can be exec
# [ -d $var ]: is dir
# [ -e $var ]: is file
# [ -c $var ]: 
# [ -b $var ]:
# [ -w $var ]: can write
# [ -r $var ]: can read
# [ -L $var ]:

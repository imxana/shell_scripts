#!/usr/local/bin/bash
#
# @file fuck_js.sh
# @author xana.awaken@gmail.com
# @date 2016-09-06
#

# 1. remove \n and \t
# 2. compress blanks
# 3. replace notes
# 4. replace following these, things 
# "{ " => "{" 
# " }" => "}" 
# " (" => "(" 
# ") " => ")" 
# ", " => "," 
# " ; " => ";" 
# to keep it readable:
# ";\n" <= ";" 
# "{\n" <= "{", "\n}" <= "}"  

if [ $# -ne 1 ]
then 
    echo "usage: $0 <filename>"
    exit 1
fi

cat $1 | \
    tr -d '\n\t' | tr -s ' ' \
    | sed 's:/\*.*\*/::g' \
    | sed 's/ \?\([{}();,:]\) \?/\1/g'








#!/usr/local/bin/bash
#
# @file sed.sh
# @author xana.awaken@gmail.com
# @date 2016-09-05
#

# replace pattern and output the result
#sed 's/fuck/shit/' fff

# and save it
#sed -i 's/fuck/shit/' fff > eee

# and 'g' will replace every pattern in every line
# sed 's/fuck/shit/g' fff


# remove blank line
# sed '/^$/d' file #/pattern/d means delete

# mark &
echo this is an example | sed 's/\w\+/[&]/g'



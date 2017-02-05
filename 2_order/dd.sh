#/bin/bash
#
# @file dd.sh
# @author xana.awaken@gmail.com
# @date 2016-08-30
#

# create a 100k test file
dd if=/dev/zero bs=100k count=1 of=data.file

# split data.file to pieces # -a=length -d=using_number
#split -b 10k data.file -d -a 4

# k(KB), M(MB), G(GB), c(byte0), w(word)

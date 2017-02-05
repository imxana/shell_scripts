#!/usr/local/bin/bash
#
# @file diff.sh
# @author xana.awaken@gmail.com
# @date 2016-09-02
#

# create the diff patch (like git diff
diff -u A.txt B.txt > ABtxt.patch

# repair the diff, make the A is same as B
patch -p1 A.txt < ABtxt.patch
# patching file A.txt

# undo the change
patch -Rp1 A.txt < ABtxt.patch
# patching file A.txt


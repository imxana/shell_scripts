#!/bin/bash
#
# @file sh_line_count.sh
# @author xana.awaken@gmail.com
# @date 2016-08-30
#


source_code_dir_path=.
file_type_extension=sh

find $source_code_dir_path -type f -name "*.$file_type_extension" -print0 | xargs -0 wc -l

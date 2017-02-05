#!/bin/bash

CMD="./script.sh" # commend refers that u check
status
$CMD
if [ $? -eq 0 ];
then
    echo "$CMD executed successfully."
else
    echo "$CMD terminated unsuccessfully."
fi

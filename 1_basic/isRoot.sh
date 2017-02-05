#!/bin/bash 

if [ $UID -ne -0 ]; then
    echo Not root user. Please run as root
else
    echo "Root user"
fi


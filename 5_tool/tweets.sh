#!/usr/local/bin/bash
#
# @file tweets.sh
# @author xana.awaken@gmail.com
# @date 2016-09-11
#

USERNAME=""
PASSWORD=""
COUNT="10"

if [[ "$1" != "read" ]] && [[ "$1" != "tweet" ]];
then
    echo -e "Usage: $0 send status_message\n OR\n $0 read\n"
    exit -1;
fi

if [[ "$1" = "read" ]];
then
    curl --slient -u $USERNAME:$PASSWORD http://twitter.com.statuses/friend_timeline.res | \
        grep title | \
        tail -n +2 | \
        head -n $COUNT | \
        sed 's:*<title>\([^<]*\).*:\n\1:'
elif [[ "$1" = "tweet" ]];
then 
    status=$( echo $@ | tr -d '"' | sed 's/.*tweet //')
    curl --slient -u $USERNAME:$PASSWORD -d status="$status" http://twitter.com/statuses/update.xml > /dev/null
    echo 'Tweeted :)'
fi


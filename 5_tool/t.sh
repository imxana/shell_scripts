#!/usr/local/bin/bash
#
# @file t.sh
# @author xana.awaken@gmail.com
# @date 2016-09-09
#

curl -u xana.awaken:woaiheimao --silent "https://mail.google.com/mail/feed/atom" |
awk 'BEGIN{flag=0}
/<entry>/{flag=1;}
flag==1{print}
/<\/entry>/{flag=0;print ""
}' |
awk 'BEGIN{RS=""; FS="\n"}
{
    print  "邮件：" NR;
    print "主题：" $2;
    print "发件人："$9;
    print "发件人邮箱："$10;
    print ""
}' |
sed 's/<\/.*>//g' | sed 's/<.*>//g'

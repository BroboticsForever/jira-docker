#!/bin/sh
#nohup /root/bin/start_atlassian_jira.bin -q -varfile /root/bin/response.varfile > /var/log/jira.log 2>&1 &
/root/bin/start_atlassian_jira.bin -q -varfile /root/bin/response.varfile

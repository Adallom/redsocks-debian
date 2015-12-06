#!/usr/bin/env bash

while read line 
do
    echo
    echo "redsocks {"
    IFS=, read local_ip local_port proxy_ip proxy_port type parse_host <<< $line
    echo '    ' local_ip = $local_ip\;
    echo '    ' local_port = $local_port\;
    echo '    ' ip = $proxy_ip\;
    echo '    ' port = $proxy_port\;
    echo '    ' type = $type\;
    if [ $parse_host -a $parse_host != None ]
    then
        echo '    ' parse_host = $parse_host\;
    fi
    echo "}"
done

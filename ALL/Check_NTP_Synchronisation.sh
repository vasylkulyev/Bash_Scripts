#!/bin/bash
ntpstat > /dev/null
if [ $? -gt 0 ];
    then
        echo "NTPD not synchronized - Please investigate"
        exit 1
fi

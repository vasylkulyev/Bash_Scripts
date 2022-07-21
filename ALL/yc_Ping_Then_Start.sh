#!/bin/bash
user=user
ovpnserver=ovpn
#First step we'll ping $ovpnserver server
ping -c3 11.12.13.14 > /dev/null
#Now we'll check if $ovpnserver available then nothing if not then start it up
if [ $? -eq 0 ]
  then
    exit 0
  else
    /home/$user/yandex-cloud/bin/yc compute instance --name $ovpnserver start > /dev/null
    exit 0
fi

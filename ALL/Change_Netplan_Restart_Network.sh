#!/bin/bash
#sudo nano /etc/netplan/01-network-manager-all.yaml
#renderer: NetworkManager >> renderer: networkd
#sudo netplan apply
#sudo systemctl restart network-manager.service

#sudo nano /etc/netplan/01-network-manager-all.yaml
#renderer: networkd >> renderer: NetworkManager
#sudo netplan apply
#sudo systemctl restart network-manager.service

###Automation Of Network Daemon Changing
ping -c3 ya.ru > /dev/null ###make ping of yandex.ru domain
if [ $? -eq 0 ]
  then ###if ping then nothing to do and exit
    exit 0
  else ###if no ping than do this changes
    sudo sed -i s/'renderer: NetworkManager'/'renderer: networkd'/g /etc/netplan/01-network-manager-all.yaml
    sudo netplan apply
    sudo systemctl restart network-manager.service
    sleep 2
    sudo sed -i s/'renderer: networkd'/'renderer: NetworkManager'/g /etc/netplan/01-network-manager-all.yaml
    sudo netplan apply
    sudo systemctl restart network-manager.service
    sudo systemctl restart networking
    exit 0
fi

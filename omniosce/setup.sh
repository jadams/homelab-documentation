#!/bin/bash

dladm show-phys
ipadm create-if igb0
ipadm create-addr -T static -a 10.10.5.10/24 igb0/v4static
route -p add default 192.168.1.1
netstat -rn -finet
echo 'nameserver 10.10.5.3' >> /etc/resolv.conf
cp /etc/nsswitch.conf{,.bak}
cp /etc/nsswitch.{dns,conf}

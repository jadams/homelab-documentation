#!/bin/bash

pkg install gmake
wget https://github.com/hadfl/lxadm/releases/download/v0.1.6/lxadm-0.1.6.tar.gz
tar zxvf lxadm-0.1.6.tar.gz
cd lxadm-0.1.6
./configure --prefix=/opt/lxadm-0.1.6
gmake
gmake install
ln -s /opt/lxadm-0.1.6/bin/lxadm /usr/bin/lxadm

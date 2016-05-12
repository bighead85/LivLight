#!/usr/bin/env bash
sudo apt-get install python-dev python-setuptools python-pip python-smbus
sudo pip install flask
git clone git://git.drogon.net/wiringPi
cd wiringPi
./build
cd ../
git clone https://github.com/Gadgetoid/WiringPi2-Python
cd WiringPi2-Python/
sudo python setup.py install
cd ../
sudo apt-get install mplayer --yes
sudo gpio load i2c
sudo ./piglow.py 
sudo echo "i2c-dev" >> /etc/modules 
sudo echo "i2c-bcm2708" >> /etc/modules 
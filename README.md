PiGlow Web Remote
=================

Requires:

Flask and Wiring Pi (as below)
cd LivLight
 ./install-depends.sh


Enble i2c module
	sudo nano /etc/modules
	
Then add these
	i2c-dev
	i2c-bcm2708

	sudo nano /etc/modprobe.d/raspi-blacklist.conf
Comment Out
	blacklist spi-bcm2708
	blacklist i2c-bcm2708	

Run with:
  
  cd LivLight
  
  sudo python hello.py
  
Put Audio books in /static/books and change hello.py to name and HMTL files as needed.

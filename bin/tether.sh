#!/usr/bin/env dash
# Enable network connection from usb tethering
# Special thanks to crunchbang user forum:
# http://crunchbang.org/forums/viewtopic.php?id=37507

# Load necesary kernel modules
modprobe usbnet
modprobe rndis_host

if test $# -eq 0
then
  dhclient enx3a6525a98448 # my android phone ifname
else
  dhclient $1 # just in case I happen to use some other phone
fi

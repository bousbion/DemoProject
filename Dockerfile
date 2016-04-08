FROM waltplatform/walt-node:rpi-default
RUN apt-get update && sudo apt-get install -y wireless-tools net-tools iw firmware-atheros hostapd isc-dhcp-server bluez -y bluez-tools -y hostapd isc-dhcp-server libdbus-1-dev libdbus-glib-1-dev libglib2.0-dev libical-dev libreadline-dev libudev-dev libusb-dev make
ADD wlan.conf /root/ 
ADD dhcpd.conf /etc/dhcp/dhcpd.conf
ADD isc-dhcp-server /etc/default/isc-dhcp-server
ADD interfaces /etc/network/interfaces
RUN chmod +x /root/*

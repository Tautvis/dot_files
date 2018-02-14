#!/usr/bin/env bash

interface=en0
echo "Current MAC address for $interface interface:"
echo "`ifconfig $interface | grep ether`"

# Generate new MAC address
# if openssl can't access random commands run this:
# sudo rm ~/.rnd
new_mac=`openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`
echo "Generated new MAC address: ${new_mac}"

# Change MAC address
echo "Changing MAC address"
sudo ifconfig en0 ether ${new_mac}

echo "New config:"
echo "`ifconfig $interface | grep ether`"

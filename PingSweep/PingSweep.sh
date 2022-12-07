#! /bin/bash

#Sweep through a defined range of subnets and IP addresses to see if they are online

#prompt the user for suubnet i.e. the first 3 denominations in the IP address
read -p "Please enter the subnet: " SUBNET

#sweep through 1 to 254 for the 4th denomination in the specified subnet
# -c 1 specifies ping only once

for IP in $(seq 100 254);
do
	ping -c 1 $SUBNET.$IP
done



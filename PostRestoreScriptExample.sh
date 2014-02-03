#!/bin/sh

echo "Tester Script for printing argv arguements."
echo ""

echo " Setting DNS"

networksetup -setmanual Wi-Fi 192.168.1.252  255.255.255.0 192.168.1.1
networksetup -setdnsservers Wi-Fi 192.168.1.253

restored_HD_Path=$1
ip=$2

echo "Restored Volume Path: " $restored_HD_Path
echo "IP Setting: " $ip

wait 10

exit 0

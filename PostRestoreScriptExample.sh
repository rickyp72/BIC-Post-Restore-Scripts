#!/bin/sh

echo "Tester Script for printing argv arguements."
echo ""

echo " Setting DNS"

networksetup -setdnsservers Wi-Fi 192.168.1.253

restored_HD_Path=$1
ip=$2

echo "Restored Volume Path: " $restored_HD_Path
echo "IP Setting: " $ip

exit 0

#!/bin/bash
#this script will attempt to put your interface into monitor mode
echo "Here are a list of your interfaces"
iwconfig
echo "Type the interface that you would like to use (Most common is wlan0)"
read interface
echo "Now starting aircrack-ng on interface" $interface
airmon-ng check kill
airmon-ng start $interface
suffix="mon"
airodump-ng $interface$suffix

#!/bin/bash
#this script will attempt to put your interface into normal mode
echo "Here are a list of your interfaces"
iwconfig
echo "Type the interface that you would like to stop (Most commonly, monitoring interfaces have mon at the end)"
read interface
airmon-ng stop $interface
service network-manager start
echo "Your interface should be stopped. Here is your new list of interfaces to make sure"
ifconfig

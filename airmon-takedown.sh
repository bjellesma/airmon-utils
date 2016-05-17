#!/bin/bash
#this script will attempt to put your interface into normal mode
airmon-ng stop wlan0mon
service network-manager start

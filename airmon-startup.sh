#!/bin/bash
#this script will attempt to put your interface into monitor mode
airmon-ng check kill
airmon-ng start wlan0
airodump-ng wlan0mon
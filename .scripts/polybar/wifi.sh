#!/usr/bin/env bash

on=$( nmcli con | grep "wlan0")

if [[ $1 == "--toggle" ]]; then
    if [[ ! -z $on ]]; then
        dunstify --replace=11111 "Wifi" "Turned off"
        nmcli r wifi off
    else

        nmcli r wifi off
        dunstify --replace=11111 "Wifi" "Turning on"
        nmcli r wifi on
        wifiname="$(nmcli con | grep wifi | cut -d " " -f 1)"
        dunstify --replace=11111 "Wifi" "Wifi on, connecting to: $wifiname"
        nmcli con up $wifiname
        dunstify --replace=11111 "Wifi" "Wifi on, connected to: $wifiname"
    fi
fi

if [[ ! -z $on ]]; then
    echo "on" 
    exit 0
else
    echo "off"
    exit 1
fi


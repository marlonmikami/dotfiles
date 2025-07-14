#!/usr/bin/env bash

on=$(hcitool dev | grep "hci0")

if [[ $1 == "--toggle" ]]; then
    if [[ ! -z $on ]]; then
        dunstify --replace=11111 "Bluetooth" "Turned off"
        bluetoothctl power off
    else
        dunstify --replace=11111 "Bluetooth" "Turned on"
        bluetoothctl power on
    fi
fi

if [[ ! -z $on ]]; then
    echo "󰂯" 
    exit 0
else
    echo "󰂲"
    exit 1
fi


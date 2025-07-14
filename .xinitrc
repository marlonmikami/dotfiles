#!/bin/sh

# Power off bluetooth
bluetoothctl power off & 

# Start window manager
bspwm

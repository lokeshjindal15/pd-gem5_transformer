#!/bin/bash
echo "tux1 script!"
ifconfig eth0 10.0.0.3
ifconfig lo up
ifconfig eth0 hw ether 00:90:00:00:00:02

sleep 5

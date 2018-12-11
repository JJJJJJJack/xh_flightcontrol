#!/bin/bash        

echo "Hello"
IPADDRESS=$(hostname -I)
if [ "$IPADDRESS"  == "192.168.2.5 " ]; then
    echo "SUCCESS Configuring IP address"
else
    echo "DOOM"
fi


WIFI_NAME=$(nm-tool |grep --only-matching '*[^ ][^:]*' |sed 's/^*//')
if [ "$WIFI_NAME"  == "UGuest" ]; then
    echo "SUCCESS Configuring SSID"
else
    echo "DOOM"
fi

echo "$WIFI_NAME"

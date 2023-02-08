#!/bin/bash

# List all common ports to an array
COMMONPORTS=( 20 21 22 23 25 53 80 110 143 443 993 995 1723 3306 3389 5900 8080 8443 10000 32768)

# Uncomment the following for a more in-depth scan
# COMMONPORTS=1-65535

[[ -z $1 ]] &&
cat << EndOfMessage
Usage: ./scanMyPorts.sh [Target IP]

Example: ./scanMyPorts.sh 157.240.15.35
Built by Meeran Hassan
EndOfMessage

# If an IP address was given
[[ $1 ]] &&
echo "Scanning IP: $1"

# Use NetCat to find open/closed ports
for PORT in ${COMMONPORTS[@]}; do
    echo -n "Port $PORT: "
    nc -z -w 1 $1 $PORT && echo "Open" || echo "Closed"
done

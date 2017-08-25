#!/usr/bin/env bash

SSID='CCS_Guest'

$(iwconfig | grep -q "$SSID")

if [ $? ==  1 ]
then
    echo "Not connected to $SSID"
    exit
fi

curl 'https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f' -H 'Host: securelogin.hpe.com' --insecure -m 2

curl 'https://securelogin.hpe.com/swarm.cgi' -H 'Host: securelogin.hpe.com' -H 'Referer: https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f' --data 'orig_url=687474703a2f2f74656368686f756e64732e636f6d2f&opcode=cp_ack' --insecure -m 2

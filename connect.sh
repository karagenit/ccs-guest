#!/usr/bin/env bash

SSID='CCS_Guest'
REQ_URL='https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f'
ACK_URL='https://securelogin.hpe.com/swarm.cgi'
ACK_DATA='orig_url=687474703a2f2f74656368686f756e64732e636f6d2f&opcode=cp_ack'

$(iwconfig | grep -q "$SSID")

if [ $? ==  1 ]
then
    echo "Not connected to $SSID"
    exit
fi

curl $REQ_URL -H 'Host: securelogin.hpe.com' --insecure -m 2

curl $ACK_URL -H 'Host: securelogin.hpe.com' -H "Referer: $REQ_URL" --data $ACK_DATA --insecure -m 2

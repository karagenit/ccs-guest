#!/usr/bin/env bash

SSID='CCS_Guest'
END_URL='http://techhounds.com/'
END_URL=`echo -n $END_URL | xxd -p | tr -d '\n'`
REQ_URL="https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=$END_URL"
ACK_URL='https://securelogin.hpe.com/swarm.cgi'
ACK_DATA="orig_url=$END_URL&opcode=cp_ack"

$(iwconfig | grep -q "$SSID")

if [ $? ==  1 ]
then
    echo "Not connected to $SSID"
    exit
fi

curl $REQ_URL --insecure -m 2

curl $ACK_URL -H "Referer: $REQ_URL" --data $ACK_DATA --insecure -m 2

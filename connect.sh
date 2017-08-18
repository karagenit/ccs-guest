#!/usr/bin/env bash

curl 'https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f' -H 'Host: securelogin.hpe.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --insecure -m 2

curl 'https://securelogin.hpe.com/swarm.cgi' -H 'Host: securelogin.hpe.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f' -H 'Connection: keep-alive' --data 'orig_url=687474703a2f2f74656368686f756e64732e636f6d2f&opcode=cp_ack' --insecure -m 2

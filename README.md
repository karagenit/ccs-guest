# CHS Wifi Acceptor

Script to Automatically Accept the CHS Guest Wifi Terms of Usage

## Redirects

https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f

Base 16 Decoded `687474703a2f2f74656368686f756e64732e636f6d2f`: `http://techhounds.com/`

**Request Header (/)**

```
GET / HTTP/1.1
Host: techhounds.com
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Cookie: __cfduid=d670b2fcfa40542da5e60d73ea321e30d1502998163
Connection: keep-alive
Cache-Control: max-age=0
```

**Response Header (/)**

```
HTTP/1.1 302 Captive Portal
Date: Fri, 18 Aug 2017 14:53:15 GMT
Cache-Control: no-cache,no-store,must-revalidate,post-check=0,pre-check=0
Location: https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f
Content-Type: text/html; charset=utf-8
X-Frame-Options: SAMEORIGIN
Strict-Transport-Security: max-age=604800
Connection: close
```

**Request Header (hpe)**

```
GET /swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f HTTP/1.1
Host: securelogin.hpe.com
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
```

**Response Header (hpe)**

```
HTTP/1.1 200 OK
Content-Type: text/html; charset=utf-8
Pragma: no-cache
Strict-Transport-Security: max-age=604800
Cache-Control: max-age=0, no-store
```

**Request Header (Accept)**

```
POST /swarm.cgi HTTP/1.1
Host: securelogin.hpe.com
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Referer: https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f
Connection: keep-alive
```

**Request Header from Upload Stream (Accept)**

```
Content-Type: application/x-www-form-urlencoded
Content-Length: 67
```

**POST Data, from ReqUploadStream**

```
orig_url=687474703a2f2f74656368686f756e64732e636f6d2f
opcode=cp_ack
```

Note that this is in fact 67 characters (plus 1 byte for newline).

**Response Header (Accept)**

```
HTTP/1.1 200 OK
Content-Type: text/html; charset=utf-8
Pragma: no-cache
Strict-Transport-Security: max-age=604800
Cache-Control: max-age=0, no-store
```

**Accept Request as cURL**

```
curl 'https://securelogin.hpe.com/swarm.cgi' -H 'Host: securelogin.hpe.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://securelogin.hpe.com/swarm.cgi?opcode=cp_generate&orig_url=687474703a2f2f74656368686f756e64732e636f6d2f' -H 'Connection: keep-alive' --data 'orig_url=687474703a2f2f74656368686f756e64732e636f6d2f&opcode=cp_ack'
```

# CHS Wifi Acceptor

Script to Automatically Accept the CHS Guest Wifi Terms of Usage

## Linux

The Linux script has been tested & works.  

### Installation

Requries `iwconfig` to check to make sure we're connected to a network with the SSID of `CCS_Guest`. I know for sure Debian has it out of the box, other distros might not.

### Usage

If you're running the script manually, you'll need to run it as root. E.g.:

```
$ sudo ./linux/connect.sh
```

Otherwise, simply use the makefile to install the hook:

```
$ cd linux/
$ sudo make install
```

This will add the script to `/etc/network/if-up.d` which means it will be run every time you connect to a new network (however, because of the SSID checking, the cURL will only be sent for the `CCS_Guest` network). 

## Windows

Development in progress!

main: install

install:
	cp connect.sh /etc/network/if-up.d/ccs-guest
	chmod +x /etc/network/if-up.d/ccs-guest
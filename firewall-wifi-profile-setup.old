#!/bin/sh
conf="/etc/nftables.d/$1.conf";
default="/etc/nftables.conf";
echo "looking for $conf"
if test ! -e "$conf"; then {
	echo "not found, enabling default firewall";
	conf="$default";
}; fi;
echo "$conf";
exec nft -f "$conf";

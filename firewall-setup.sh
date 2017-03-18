#!/bin/sh
conf="/etc/nftables.d/$1.conf";
default="/etc/nftables.conf";
if test ! -e $conf; then conf="$default"; fi;
exec nft -f "$conf";

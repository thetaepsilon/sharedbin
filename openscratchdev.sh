#!/bin/sh
exec cryptsetup open \
	--type=plain \
	--key-file=/dev/urandom \
	-- "$1" "$2";

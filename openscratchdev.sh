#!/bin/sh
exec cryptsetup open --type=plain --key-file=/dev/urandom --cipher=aes-xts-plain64 --key-size=512 -- "$1" "$2";

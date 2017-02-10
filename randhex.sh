#!/bin/sh
dd if=/dev/urandom count=1 bs=$1 2>/dev/null | od -An -tx1 | tr -d ' \n';
echo;

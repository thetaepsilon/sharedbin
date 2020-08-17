#!/bin/sh
exec sha256sum "$1" > "$1.sha256";

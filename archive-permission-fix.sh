#!/bin/sh
dir="$1";
chown -R 0:0 "$dir";
find "$dir" -type d -exec chmod 777 {} \;
find "$dir" -type f -exec chmod 444 {} \;

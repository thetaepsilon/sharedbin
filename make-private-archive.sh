#!/bin/sh
dir="$1";
find "$dir" -type d -exec chmod 770 {} \;
find "$dir" -type f -exec chmod 440 {} \;

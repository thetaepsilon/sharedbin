#!/bin/sh
dir="$1";
if test -z "$dir"; then echo "Usage: $0 path" >&2; exit 1; fi;
find "$dir" -type d -exec chmod 777 {} \; &&
find "$dir" -type f -exec chmod 444 {} \; || exit $?;

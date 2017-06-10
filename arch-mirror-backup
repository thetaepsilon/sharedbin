#!/bin/sh
source="$1";
dest="$2";

if test -z "${source}"; then echo "missing source URL"; exit 1; fi
if test -z "${dest}"; then echo "missing destination URL"; exit 1; fi

disablefsync="export LD_PRELOAD=/usr/local/lib/libeatmydata.so"

${disablefsync};
rsync --recursive --times --links --hard-links --delete-after --update --copy-links --safe-links --verbose "${source}" "${dest}";

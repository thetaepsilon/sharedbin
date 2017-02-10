#!/bin/sh
mirror="$1";
repo="$2";

if test -z "${mirror}"; then echo "missing Rsync URL"; exit 1; fi
if test -z "${repo}"; then echo "missing repository name"; exit 1; fi

disablefsync="export LD_PRELOAD=/usr/local/lib/libeatmydata.so"

arch="x86_64";
component="${repo}/os/${arch}/";
url="${mirror}${component}";
local="./${component}";
#temporary="$PWD/temp/${component}";
mkdir -p "${local}" || exit 1;
${disablefsync};
rsync -rtlH --delete-after --update --copy-links --safe-links --max-delete=1000 --delete-excluded --exclude='.*' "${url}" "${local}";

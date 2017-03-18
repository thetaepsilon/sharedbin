#!/bin/sh
if test "$#" -lt 2; then echo "Usage: $0 <directory to search> <grep pattern> [filename pattern]" >&2; exit 1; fi
dir="$1";
contentmatch="$2";
namematch="$3";


findregex.sh "$dir" "$namematch" | xargs --null -- grep -l "$contentmatch";

#!/bin/sh
dir=$1;
requestid=$(randhex.sh 8);
path="$dir/$requestid";
read name;
echo "cookie request for $name on $path" >&2;
mkfifo $path || exit $?;
read < $path;
echo $name;
rm $path;

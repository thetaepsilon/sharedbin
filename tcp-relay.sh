#!/bin/sh
confdir="$1";
if test -z "$confdir"; then echo "Usage: $0 <conf dir>"; exit 1; fi

file="${confdir}/listenport";
listenport=$(cat "$file") || { echo "Can't read listening port number from $file";  exit 1; };
echo "Listen port: $listenport";

file="${confdir}/interface";
interface=$(cat "$file") || { echo "Can't read interface name from $file";  exit 1; };
# treat a blank interface name as "don't bind to an interface"
if test -n "$interface"; then {
	bindopt=",so-bindtodevice=${interface}";
	echo "Binding to network interface: ${interface}"
};
else {
	bindopt="";
	echo "Not binding to specific address";
}; fi

file="${confdir}/host";
host=$(cat "$file") || { echo "Can't read remote hostname from $file";  exit 1; };
echo "Remote host: $host";

file="${confdir}/port";
port=$(cat "$file") || { echo "Can't read remote port from $file";  exit 1; };
echo "Remote port: $port";

echo "---- socat exec"

exec socat "TCP-LISTEN:${listenport},fork,reuseaddr${bindopt}" "TCP:${host}:${port}";

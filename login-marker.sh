#!/bin/sh
id=$(id -un);
dir="/run/loginmarker";
if cat "${dir}/${id}" >&2; then
	export SHELL=$(cat /etc/realshell.d/$id) || exit $?;
	export PATH="/usr/local/bin:$PATH";
	exec "$SHELL" -l || exit $?;
else
	echo "Permission denied";
	read;
	exit 1;
fi

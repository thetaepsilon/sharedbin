#!/bin/sh
id=$(id -un);
dir="/run/loginmarker";
if cat "${dir}/${id}" >&2; then
	export SHELL=$(cat /etc/realshell.d/$id) || exit $?;
	export PATH="$PATH:/usr/local/bin";
	exec $SHELL || exit $?;
else
	echo "Permission denied";
	read;
	exit 1;
fi

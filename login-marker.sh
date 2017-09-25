#!/bin/sh
id=$(id -un);
dir="/run/loginmarker";
if cat "${dir}/${id}" >&2; then
	SHELL=$(cat "/etc/realshell.d/$id") || exit $?;
	export SHELL;
	exec "$SHELL" -l || exit $?;
else
	echo "Permission denied";
	read -r;
	exit 1;
fi

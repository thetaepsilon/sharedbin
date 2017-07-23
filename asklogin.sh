#!/bin/sh
id=$(id -un);
reply=$(echo "$id" | socat STDIO,ignoreeof UNIX-CONNECT:/run/logincookie/ask);
#echo $reply;
if test "$reply" == "$id"; then
	SHELL=$(cat "/etc/realshell.d/$id") || exit $?;
	export SHELL;
	exec "$SHELL" || exit $?;
else
	echo "Permission denied";
	exit 1;
fi

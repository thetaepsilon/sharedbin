#!/bin/sh
id=$(id -un);
reply=$(echo $id | socat STDIO,ignoreeof UNIX-CONNECT:/run/logincookie/ask);
#echo $reply;
if test "$reply" == "$id"; then
	export SHELL=$(cat /etc/realshell.d/$id) || exit $?;
	exec $SHELL || exit $?;
else
	exit 1;
fi

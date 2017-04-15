#!/bin/sh

confdir="$HOME/ssh.d";

if test "$#" -lt 2; then {
	builtin echo "Usage: $0 profile [ssh args...]" >&2;
	exit 1;
}; fi;

profile="$1";
shift;
profiledir="${confdir}/${profile}";

if test -n "$SSH_PROXY_COMMAND"; then
	proxy="ProxyCommand $SSH_PROXY_COMMAND %h %p";
else
	proxy="ProxyCommand nc %h %p";
fi

exec ssh -o "UserKnownHostsFile ${profiledir}/knownhosts" -o "IdentityFile ${profiledir}/privkey" -o "$proxy" "$@";

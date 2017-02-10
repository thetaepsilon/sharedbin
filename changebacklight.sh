#!/bin/sh
node="/sys/class/backlight/intel_backlight/brightness";

current="$(cat ${node})";

if test "$current" -lt "200"; then
	increment=50;
else
	if test "$current" -lt "600"; then
		increment=100;
	else
		if test "$current" -lt "1400"; then
			increment=200;
		else
			if test "$current" -lt "3000"; then
				increment=400;
			else
				increment=800;
			fi
		fi
	fi;
fi

upordown="$1";
if test "$upordown" == "1"; then op="+"; else op="-"; fi;
newval=$(dc -e "$current $increment $op p");

echo $newval > $node;


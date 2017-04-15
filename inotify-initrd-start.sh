#!/bin/sh
r="/new_root";
logpath="$r/inotify-monitor-boot";
echo 65536 > /proc/sys/fs/inotify/max_user_watches;
nohup inotifywait -m -e open \
	"$r/etc" "$r/var" "$r/usr" \
	> "$logpath.log" 2> "$logpath.err" &

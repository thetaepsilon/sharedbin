#!/bin/sh
for device in /dev/input/event*; do th-cmd --socket /run/thd.socket --passfd --add "$device"; done

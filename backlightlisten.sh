#!/bin/sh
# expects a read()-able FD on stdin!

while read cmd < /proc/self/fd/0; do changebacklight.sh "$cmd"; done

#!/bin/sh
# hack to enable systemd-wide pulseaudio without needing to invoke as root first.
# warning: user this is run as must not be used for anything else!

id=$(id --user);
run="/run/user/$id";
chmod 755 $run;
chmod 755 $run/pulse;
cp ~/.config/pulse/cookie /tmp/pulse-cookie;
chmod 644 /tmp/pulse-cookie;

#!/bin/sh
exec xinput --set-prop "$1" "libinput Disable While Typing Enabled" 0;

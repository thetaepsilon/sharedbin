#!/bin/sh
path="$1";
escaped=$(systemd-escape -p "${path}");
unit="${escaped}.mount";
echo "${unit}";
exec systemctl stop "${unit}";

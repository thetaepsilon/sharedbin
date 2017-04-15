#!/bin/sh
exec find "$1" -type f -print0 | grep -zE "$2";

#!/bin/sh
exec find "$1" -print0 | grep -zE "$2";

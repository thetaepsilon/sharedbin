#!/bin/sh
for arg in "$@"; do echo "$arg" >&2; done;
exit 1;

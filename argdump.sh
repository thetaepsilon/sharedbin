#!/bin/sh
for arg in "$@"; do builtin echo "$arg" >&2; done;
exit 1;

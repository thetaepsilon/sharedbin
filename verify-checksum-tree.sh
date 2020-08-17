#!/bin/sh
find "$1" -name "*.sha256" -execdir sha256sum -c --quiet {} \;

#!/bin/sh
exec useradd --home-dir / --no-create-home --shell /sbin/nologin $@;

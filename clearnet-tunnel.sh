#!/bin/sh
exec nc -X connect -x 127.0.0.1:9070 $1 $2;

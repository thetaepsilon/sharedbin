#!/bin/sh
pacman -Qii | grep -E '^(UN)?MODIFIED';

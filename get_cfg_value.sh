#!/bin/sh
cat moonplow.cfg | grep "$1" | sed -E 's/^[^=]*=//'

#!/bin/bash
source ./moonplow/base.sh

DUMMY_SETTINGS=`cfg_get dummy_settings`

test -f settings.py || cp "$DUMMY_SETTINGS" settings.py

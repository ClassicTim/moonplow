#!/usr/bin/env bash
source ./moonplow/base.sh

DUMMY_SETTINGS=`cfg_get dummy_settings`
SETTINGS_DESTINATION=`cfg_get dummy_settings_destination`

test -f "$SETTINGS_DESTINATION/settings.py" || cp "$DUMMY_SETTINGS" "$SETTINGS_DESTINATION/settings.py"

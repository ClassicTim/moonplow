#!/bin/sh
source ./moonplow/base.sh

VIRTUALENV=`cfg_get virtualenv`
EXCLUDE=`cfg_get flake8_exclude`

echo_ok ">>>> Running static analysis..."

. $VIRTUALENV/bin/activate; flake8 --max-line-length=120 --show-source --exclude="$VIRTUALENV,$EXCLUDE" .

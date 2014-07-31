#!/bin/bash
source ./moonplow/base.sh

export PIP_CACHE=".pip-cache"

VIRTUALENV=`cfg_get virtualenv`

echo_ok ">>>> Installing dependencies..."
test $VIRTUALENV/requirements_installed -nt requirements.txt || (. $VIRTUALENV/bin/activate; pip install -Ur requirements.txt && echo > $VIRTUALENV/requirements_installed)

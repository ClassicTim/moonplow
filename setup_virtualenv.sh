#!/bin/bash
source ./moonplow/base.sh

VIRTUALENV=`cfg_get virtualenv`
VIRTUALENV_ARGS=`cfg_get virtualenv_args`

echo_ok ">>>> Creating virtualenv..."

test -d $VIRTUALENV || virtualenv $VIRTUALENV_ARGS --setuptools $VIRTUALENV

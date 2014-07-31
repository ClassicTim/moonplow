#!/bin/bash
source ./moonplow/base.sh

TEST_ENGINE=`cfg_get test_engine`
VIRTUALENV=`cfg_get virtualenv`

case $TEST_ENGINE in
django)
	echo_ok ">>>> Running tests (django)..."
	source $VIRTUALENV/bin/activate; ./manage.py test $TEST_ARGS 
	;;
nose)
	echo_ok ">>>> Running tests (nose)..."
	source $VIRTUALENV/bin/activate; nosetests $TEST_ARGS
	;;
*)
	echo_fail "Unknown test engine $TEST_ENGINE"
	exit 1
esac

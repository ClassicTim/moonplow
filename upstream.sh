#!/usr/bin/env bash
source ./moonplow/base.sh

echo_ok ">>>> Adding upstream remote..."
UPSTREAM=`cfg_get git_upstream`

git remote -v | grep $UPSTREAM > /dev/null;
if [ $? != 0 ]; then
    git remote add upstream $UPSTREAM;
fi

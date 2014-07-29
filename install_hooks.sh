#!/bin/sh
source ./moonplow/base.sh

echo_ok ">>>> Installing git hooks"

ln -sf $BASE_DIR/pre-commit.sh .git/hooks/pre-commit

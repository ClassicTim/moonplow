#!/bin/sh
source ./moonplow/base.sh

echo_ok ">>>> Saving commit info..."
git log -1 --abbrev-commit --oneline > short_commit
git log -1 > commit

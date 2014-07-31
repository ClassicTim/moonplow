#!/bin/bash
source ./moonplow/base.sh


PROJECT_NAME=`cfg_get project_name`


get_remote () {
    git remote -v | grep "$1" | grep push | awk '{print $2}'
}


current_branch () {
    git branch | grep '*' | awk '{print $2}'
}


open_pull_request () {
    open "https://github.com/`get_remote origin | grep -oE ':(\w+)\/' | sed -E 's/^.{1}//' | sed -E 's/.{1}$//'`/$PROJECT_NAME/compare/`current_branch`?expand=1"
}


if [ $# -ne 0 ]; then
    $1
fi

#!/bin/bash

REVERSE=`tput rev`
CYAN=`tput bold; tput setaf 6`
RED=`tput bold; tput setaf 1`
RESET=`tput sgr0`


BASE_DIR="./moonplow/"


echo_ok () {
    echo "$CYAN$*$RESET"
}

echo_fail () {
    echo "$RED$*$RESET"
}


cfg_get () {
    cat moonplow.cfg | grep "^$1=" | sed -E 's/^[^=]*=//'
}

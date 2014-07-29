#!/bin/sh
source ./moonplow/base.sh

echo_ok ">>>> Cleaning..."
echo_ok '  *.pyc and *~'
$BASE_DIR/remove_pycs_and_backups.sh
VIRTUALENV=`cfg_get virtualenv`
echo_ok "  $VIRTUALENV"
rm -rf "$VIRTUALENV"
while read LINE
do
	echo_ok "  $LINE"
	rm -rf $LINE
done < moonplow.clean

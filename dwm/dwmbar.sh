#!/bin/sh
#
# set dwm status bar (root name)

while :; do
	xsetroot -name "$(wmstatus)"
	sleep 1
done

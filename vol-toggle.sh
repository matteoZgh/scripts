#!/bin/sh

STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
if [ "$STATUS" = "off" ]; then
	/usr/bin/amixer set Master toggle
	/usr/bin/amixer set Speaker toggle
else
	/usr/bin/amixer set Master toggle
fi

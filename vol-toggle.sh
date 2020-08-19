#!/bin/sh

STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
if [ $STATUS == "off" ]; then
	/usr/bin/amixer set Master toggle
else
	/usr/bin/amixer set Master toggle
	/usr/bin/amixer set Front toggle
	/usr/bin/amixer set Surround toggle
	/usr/bin/amixer set Center toggle
	/usr/bin/amixer set LFE toggle
fi
/home/matteo/scripts/dwm-bar/dwm_bar.sh

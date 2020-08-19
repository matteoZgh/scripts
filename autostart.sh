#!/bin/sh

pkill wp-change
/home/matteo/scripts/wp-change.sh &

pkill dwmbar
/home/matteo/scripts/dwm-bar/dwmbar.sh &

picom -b

fcitx-autostart

killall qv2ray
killall /usr/lib/v2ray/v2ray
qv2ray &

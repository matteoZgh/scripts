#!/bin/sh

pkill wp-change
/home/matteo/scripts/wp-change.sh &

pkill dwmbar
/home/matteo/scripts/dwm-bar/dwmbar.sh &

picom -b

fcitx-autostart

killall v2ray
sleep 1
qv2ray &

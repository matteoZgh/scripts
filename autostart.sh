#!/bin/sh

killall redshift
redshift -l geoclue2 &

pkill wp-change
/home/matteo/scripts/wp-change.sh &

pkill dwm_bar
echo "💻 MEM ---Mi/-.-Gi CPU --.--%" > /home/matteo/.resources
/home/matteo/scripts/dwm-bar/dwm_bar.sh &

/home/matteo/scripts/tap-to-click.sh

picom -b

fcitx-autostart

wmname LG3D

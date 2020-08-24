#!/bin/sh
turn=$(ps aux | grep -v grep | grep trayer)
if [ "$turn" == "" ]; then
	eval "trayer --transparent true --edge top --align center --width 10 --height 20 --tint 0x3333333333 &"
else
	eval "killall trayer"
fi

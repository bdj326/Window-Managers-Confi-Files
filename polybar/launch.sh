#!/bin/bash
#Terminate already running instances
killall -q polybar

#polybar-msg cmd quit

#Launch Polybar using default config location ~/.config/polybar/config.ini
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

echo "polybar launched ..."

#!/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shutdown
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
waybar

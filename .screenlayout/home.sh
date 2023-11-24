#!/bin/sh
xrandr \
  --output DP-0 --off \
  --output DP-1 --off \
  --output DP-2 --off \
  --output DP-3 --off \
  --output HDMI-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
  --output DP-4 --scale 1x1 --mode 3840x2400 --pos $(((2560 - 1920) / 2))x1440 --rotate normal \
  --output DP-5 --off \
  --output DP-6 --off

xrandr --output DP-4 --scale 0.5x0.5

sleep 3
nitrogen --restore

#!/bin/sh
xrandr \
  --output DP-0   --off \
  --output DP-1   --off \
  --output DP-2   --off \
  --output HDMI-0 --off \
  --output DP-3   --off \
  --output DP-4   --scale 0.5x0.5 --primary --mode 3840x2400 --pos 0x0 --rotate normal

sleep 1
nitrogen --restore

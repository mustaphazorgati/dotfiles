#!/bin/bash

# Write current clipboard using xdotool
# Takes one parameter as the delay (default 5)

delay=$(($1))
[[ $delay -le 0 ]] && delay=5

while [[ $delay -gt 0 ]]; do
  echo $((delay--))
  sleep 1
done

clipboard_contents=$(xsel --clipboard --output; echo .)
clipboard_contents=${clipboard_contents%.}

xdotool type "$clipboard_contents"
xdotool key Tab

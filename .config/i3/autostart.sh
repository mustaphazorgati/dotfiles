#!/bin/sh

i3-msg "workspace --no-auto-back-and-forth number 1"
i3-msg "append_layout $HOME/.config/i3/workspace-1.json"
i3-msg "workspace --no-auto-back-and-forth ssh"
urxvt -name ssh-add -e ssh-add && i3-msg "workspace --no-auto-back-and-forth number 1"

i3-msg "workspace --no-auto-back-and-forth number 2"

sleep 5
for win in $(wmctrl -l | awk -F' ' '{print $1}'); do
    wmctrl -i -r $win -b remove,demands_attention
done

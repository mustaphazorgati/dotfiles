#!/bin/sh

i3-msg workspace number 1
i3-msg append_layout "$HOME/.config/i3/workspace-1.json"
i3-msg workspace ssh
urxvt -name ssh-add -e ssh-add && i3-msg workspace number 1

i3-msg [class="Signal"] focus

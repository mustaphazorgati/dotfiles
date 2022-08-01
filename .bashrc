#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -lah'
alias open='xdg-open'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias rm='trash'

PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/mustapha/.dotfiles/ --work-tree=/home/mustapha'
alias terminal=urxvt
export GPG_TTY=$(tty)

source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null

# HISTORY

# Enable history append instead od overwriting
shopt -s histappend
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
export HISTSIZE=500000
export HISTFILESIZE=500000

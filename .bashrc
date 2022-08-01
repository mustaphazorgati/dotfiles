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

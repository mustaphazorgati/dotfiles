#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -lah'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/mustapha/.dotfiles/ --work-tree=/home/mustapha'
alias terminal=urxvt
export GPG_TTY=$(tty)

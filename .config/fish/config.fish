if status is-interactive
  # Commands to run in interactive sessions can go here
  fish_config theme choose "Dracula Official"
  thefuck --alias | source
  export GPG_TTY=$(tty)

  # alias / abbr
  abbr  ... 'cd ../..'
  alias ... 'cd ../..'
  abbr  .... 'cd ../../..'
  alias .... 'cd ../../..'
  abbr  rm trash
  alias rm trash
  abbr  ll 'ls -lah'
  alias ll 'ls -lah'
  abbr  open xdg-open
  alias open xdg-open
  abbr  pbcopy 'xsel --clipboard --input'
  alias pbcopy 'xsel --clipboard --input'
  abbr  pbpaste 'xsel --clipboard --output'
  alias pbpaste 'xsel --clipboard --output'
  abbr  config 'git --git-dir=/home/mustapha/.dotfiles --work-tree=/home/mustapha'
  alias config 'git --git-dir=/home/mustapha/.dotfiles --work-tree=/home/mustapha'
  abbr  terminal urxvt
  alias terminal urxvt

end


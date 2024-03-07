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
  abbr  installer 'git --git-dir=/home/mustapha/.installer/.git --work-tree=/home/mustapha/.installer'
  alias installer 'git --git-dir=/home/mustapha/.installer/.git --work-tree=/home/mustapha/.installer'
  abbr  terminal urxvt
  alias terminal urxvt

  function bind_bang
    switch (commandline -t)[-1]
      case "!"
        commandline -t -- $history[1]
        commandline -f repaint
      case "*"
        commandline -i !
    end
  end

  function bind_dollar
    switch (commandline -t)[-1]
      case "!"
        commandline -f backward-delete-char history-token-search-backward
      case "*"
        commandline -i '$'
    end
  end

  function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
  end

end


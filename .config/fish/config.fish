if status is-interactive
  # Commands to run in interactive sessions can go here
  thefuck --alias | source

  # alias / abbr
  abbr ll 'ls -lah'
  alias ll 'ls -lah'
  abbr open xdg-open
  alias open xdg-open
  abbr pbcopy 'xsel --clipboard --input'
  alias pbcopy 'xsel --clipboard --input'
  abbr pbpaste 'xsel --clipboard --output'
  alias pbpaste 'xsel --clipboard --output'
  abbr config 'git --git-dir=/home/mustapha/.dotfiles --work-tree=/home/mustapha'
  alias  config 'git --git-dir=/home/mustapha/.dotfiles --work-tree=/home/mustapha'
  abbr terminal urxvt
  alias terminal urxvt
end


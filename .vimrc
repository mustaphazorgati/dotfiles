set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'mboughaba/i3config.vim'

call vundle#end()
filetype plugin indent on

set shell=/bin/bash

set guifont=Gelasio:h11
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set nu
syntax on
color dracula

autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end


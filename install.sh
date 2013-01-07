#!/bin/bash

RIM_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${RIM_HOME}/lib/envconf.sh"

echocolor $green "Setting up Vim plugins" >&2

VIM_HOME="${HOME-~}/.vim"
if [ ! -e "$VIM_HOME/bundle" ]; then
  echocolor $blue "Instaling Pathogen" >&2
  mkdir -p "$VIM_HOME/autoload" "$VIM_HOME/bundle"; \
  curl -Sso "$VIM_HOME/autoload/pathogen.vim" \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
else
  echocolor $red "Pathogen has been previously installed." >&2
fi

echocolor $blue "Installing Surround.vim" >&2
  git clone http://github.com/tpope/vim-surround.git "$VIM_HOME/bundle/vim-surround" > /dev/null 2>&1
echocolor $blue "Completed installing Surround.vim" >&2
echocolor $blue "Installing Rails.vim" >&2
  git clone http://github.com/tpope/vim-rails.git "$VIM_HOME/bundle/vim-rails" > /dev/null 2>&1
echocolor $blue "Completed installing Rails.vim" >&2
echocolor $blue "Installing Endwise.vim" >&2
  git clone http://github.com/tpope/vim-endwise.git "$VIM_HOME/bundle/vim-endwise" > /dev/null 2>&1
echocolor $blue "Completed installing Endwise.vim" >&2

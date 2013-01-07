#!/bin/bash

RIM_HOME=${HOME}/.rim
export PATH=$PATH:$RIM_HOME

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

if ! grep 'plugins/vim' ~/.vimrc; then
  cat <<-VIMRC >> ~/.vimrc
  execute pathogen#infect()
  execute pathogen#infect("$RIM_HOME/plugins/vim")
  VIMRC
fi

cd $RIM_HOME
  git submodule init > /dev/null 2>&1
  git submodule update > /dev/null 2>&1
cd $OLDPWD

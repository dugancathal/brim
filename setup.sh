#!/bin/bash

RIM_HOME=${HOME}/.rim
export PATH=$PATH:$RIM_HOME

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim


#!/bin/bash

function __rim_vim_plugins() {
  local command=$1; shift
  case "$command" in
    (add|install)
      local repopath=$1
      local reponame=${2-$(expr "$repopath" : '.*\/\(.*\).git')}
      git clone "$repopath" "$VIM_HOME/bundle/$reponame" > /dev/null
    ;;
    (rm|remove)
      local reponame=$1
      rm -rf "$VIM_HOME/bundle/$reponame"
    ;;
    (show|list)
      ls -l "$VIM_HOME/bundle"
    ;;
  esac
}

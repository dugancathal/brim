#!/bin/bash

# BRIM Configuration
__brim_lib_path=${BRIM_HOME}/lib
__brim_template_path=${BRIM_HOME}/templates

# Ruby Configuration
__brim_ruby="/usr/bin/env ruby"
__brim_as_string_ext="active_support/core_ext/string"

# Vim Configuration
VIM_HOME="${HOME}/.vim"

for lib in $(ls $__brim_lib_path/*); do
  if ! [[ "$lib" =~ "envconf.sh" ]]; then
    source $lib
  fi
done

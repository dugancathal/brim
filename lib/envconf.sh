#!/bin/bash

# RIM Configuration
__rim_lib_path=${RIM_HOME}/lib
__rim_template_path=${RIM_HOME}/templates

# Ruby Configuration
__rim_ruby="/usr/bin/env ruby"
__rim_as_string_ext="active_support/core_ext/string"

for lib in $(ls $__rim_lib_path/*); do
  if ! [[ "$lib" =~ "envconf.sh" ]]; then
    source $lib
  fi
done

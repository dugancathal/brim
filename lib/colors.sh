#!/bin/bash

black="\033[30m"
red="\033[31m"
dark_red="\033[1;31m"
green="\033[32m"
dark_green="\033[1;32m"
yellow="\033[33m"
dark_yellow="\033[1;33m"
blue="\033[34m"
dark_blue="\033[1;34m"
purple="\033[35m"
dark_purple="\033[1;35m"
cyan="\033[36m"
dark_cyan="\033[1;36m"
clear_color="\033[0m"

function echocolor() {
  local color=$1
  local message=$2
  echo -e "$color$message$clear_color"
}

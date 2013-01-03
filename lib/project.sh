#!/bin/bash

function __rim_create_project() {
  local project_name=$1; shift
  local options=$@
  local curr_dir=$(pwd)

  echo -e "${green}Preparing project: ${red}$project_name${clear_color}" >&2
  mkdir -p $project_name

  echo -e "${red}"
  cd $project_name
    git init
    mkdir -p "lib" "test"

    echo -n "source 'http://rubygems.org'\n" >> 'Gemfile'
    echo -n "DO SOMETHING\n" >> 'README.md'
    echo -n "/tmp\n/log\n/.bundle\n/db/*.sqlite3" >> '.gitignore'
    echo -n "require 'rake'\nrequire 'rake/testtask'\n\nRake::TestTask.new do |t|\n  t.pattern = 'test/**/*_test.rb'\n  t.libs << 'test'\nend\n" >> 'Rakefile'
    echo -n "require 'minitest/unit'\nrequire 'minitest/autorun'\n\nrequire '$project_name'\n" >> 'test/test_helper.rb'
  cd $curr_dir
  echo -e  "${clear_color}"
}


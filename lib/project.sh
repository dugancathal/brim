#!/bin/bash

function __brim_create_project() {
  local project_name=$1; shift
  local options=$@
  local curr_dir=$(pwd)

  echo -e "${green}Preparing project: ${red}$project_name${clear_color}" >&2
  mkdir -p $project_name

  echo -en "${red}"
  cd $project_name
    git init
    mkdir -p "lib" "test"

    echo -e "source 'http://rubygems.org'\n" >> 'Gemfile'
    echo -e "DO SOMETHING\n" >> 'README.md'
    echo -e "/tmp\n/log\n/.bundle\n/db/*.sqlite3\n" >> '.gitignore'
    echo -en "require 'rake'\nrequire 'rake/testtask'\n" >> 'Rakefile'
    echo -e "Rake::TestTask.new do |t|\n  t.pattern = 'test/**/*_test.rb'\n  t.libs << 'test'\nend\n" >> 'Rakefile'
    echo -en "require 'minitest/unit'\nrequire 'minitest/autorun'\n" >> 'test/test_helper.rb'
    echo -e "require '$project_name'\n" >> 'test/test_helper.rb'
  cd $curr_dir
  echo -ne  "${clear_color}"
}


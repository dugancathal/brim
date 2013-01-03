RIM
===

A set of ruby/bash/vim helpers, templates and things to make your life easier.

Setup
-----

    $ git clone http://github.com/dugancathal/rim ~/.rim
    $ echo "[[ -s "$HOME/.rim/setup.sh" ]] && source ~/.rim/setup.sh" >> ~/.bashrc

Usage
-----

Currently, there are two primary operations supported: project creation and templating.

Project creation creates a directory with the following format and some sensible defaults:

    $ rim project project
    project/
    ├── Gemfile
    ├── lib
    ├── Rakefile
    ├── README.md
    └── test
        └── test_helper.rb

The templating is accomplished a little differently:

    $ rim migration create_table products # => prints a ActiveRecord::Migration file for products
    $ rim tdd minitest products           # => prints a MiniTest::Unit test file for products

Note these are printed to the screen and you therefore have to redirect it to the file you want to save it to.


More to come

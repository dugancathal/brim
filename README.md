Bbrim
====

A set of ruby/bash/vim helpers, templates and things to make your life easier.

Setup
-----

These steps only need to be completed once.  The first clones the repo, the second installs some vim stuff, and the last adds the initializer to your .bashrc.

    git clone http://github.com/dugancathal/bbrim ~/.bbrim
    $HOME/.bbrim/install.sh
    echo "[[ -s "$HOME/.brim/setup.sh" ]] && source ~/.brim/setup.sh" >> ~/.bashrc

Usage
-----

Currently, there are three pbrimary operations supported: project creation, templating, and vim plugins using Pathogen <http://github.com/tpope/vim-pathogen>.

Project creation creates a directory with the following format and some sensible defaults:

    $ brim project project
    project/
    ├── Gemfile
    ├── lib
    ├── Rakefile
    ├── README.md
    └── test
        └── test_helper.rb

The templating is accomplished a little differently:

    $ brim migration create_table products # => prints a ActiveRecord::Migration file for products
    $ brim tdd minitest products           # => prints a MiniTest::Unit test file for products

Note these are printed to the screen and you therefore have to redirect it to the file you want to save it to.

By default, you get preloaded with a few vim plugins:

* Vim Endwise  - for auto-adding block endings in several languages
* Rails.vim    - for sensible Rails helpers
* Surround.vim - for helpful "surround" updates and adds

More to come

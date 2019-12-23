#!/usr/bin/env bash

set -euxo errtrace pipefail

plugins=$(cat <<-END
https://github.com/kien/ctrlp.vim
https://github.com/tpope/vim-fugitive
https://github.com/godlygeek/tabular
https://github.com/editorconfig/editorconfig-vim.git
https://github.com/motus/pig.vim.git
https://github.com/chr4/nginx.vim.git
https://github.com/derekwyatt/vim-scala
https://github.com/hashivim/vim-terraform.git
https://github.com/jnurmine/Zenburn
https://github.com/jpo/vim-railscasts-theme
https://github.com/29decibel/codeschool-vim-theme
https://github.com/altercation/vim-colors-solarized
END
)

git config --global fetch.fsckobjects false

cd bundle
for plugin in $plugins
do
  name=$(basename $plugin | sed 's/\.git//')
  echo "Updating vim plugin: $name."
  rm -rf $name
  git clone $plugin
  rm -rf $name/.git
done

git config --global fetch.fsckobjects true

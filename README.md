# ~/dotfiles
[![Build Status](http://img.shields.io/travis/morazow/dotfiles.svg?style=flat-square)][travis]

Collection of configuration files for `m.orazow`.

Currently I am developing in OS X. However, there are files for Linux OS from
earlier times.

## Quick Start

Git clone this repository and then link the files to correct places.

## Vim

To add a submodule:
```bash
$ git submodule add https://github.com/hashivim/vim-terraform.git _vim/bundle/vim-terraform
```

To update all vim submodules:
```bash
$ git submodule foreach git pull origin master
```

## License

[The MIT License (MIT)](LICENSE.md)

## Inspiration

I hereby acknowledge and thank the people who have made their
`~/dotfiles` publicly available!

* [Derek Wyatt](https://github.com/derekwyatt/dotfiles)
* [Greg Hurrell](https://github.com/wincent/wincent)

[travis]: http://travis-ci.org/morazow/dotfiles

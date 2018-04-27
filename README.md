# ~/dotfiles

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
```
The MIT License (MIT)

Copyright (c) 2018 Muhammet Orazov

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

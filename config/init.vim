"
" A Vim/NVim Configuration File
" .vimrc, ~/.config/nvim/init.vim
"
" maintained by:
" Muhammet Orazov <m.orazow@gmail.com>
"

" Plugin Installations

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'

Plug 'derekwyatt/vim-scala'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

"===
"=== General Settings
"===
let mapleader=","                 " Leader key, years of muscle habit

if &compatible
  set nocompatible                " Disable compatibility to old vi
endif

syntax enable                     " Enable syntax highlighting
set autoindent                    " Enable auto indentation on the next line
set autoread                      " Enable auto reloading of files that changed on disk
set encoding=utf-8                " Display files in UTF-8 formatting
set clipboard=unnamedplus         " Enable copy & paste between Vim and the others
set cmdheight=2                   " Set extra space for displaying messages, also required for coc.vim
set cpoptions=B$                  " Enable `cw` command to put a `$` at the end of the word
set hidden                        " Enable working with multiple unsaved buffers
set laststatus=2                  " Set statusline to always visible
set mouse=v                       " Enable only mouse middle click paste
set noerrorbells                  " Disable annoying bells
set nobackup                      " Disable backup, recommended by conquer of completion (coc) plugin
set nowritebackup                 " Recommended by conquer of completion (coc) plugin
set noshowmode                    " Disable showing mode on command line, we have lightline for it
set noswapfile
set nowrap
set nu
set signcolumn=yes                " Show signcolumn instead of shifting text for diagnostics
set shortmess+=c                  " Do not pass messages to |ins-completion-menu|
set smartindent
set splitbelow                    " Set horizontal splits to the below
set splitright                    " Set vertical splits to the right
set timeoutlen=500                " Enable faster (mapped) key sequence to complete (default: 1000ms)
set updatetime=300                " Enable faster update time for plugins (default: 4000ms)
set undodir=~/.config/nvim/undo
set undofile

"===
"=== Tab Settings
"===
set expandtab                     " Insert 4 spaces when pressing a tab
set shiftwidth=4                  " Set indentation to use 4 spaces width
set softtabstop=4                 " Set multiple spaces as tabs so that <BACKSPACE> key removes them
set tabstop=4                     " Display existing tabs with 4 spaces width

"===
"=== Search Settings
"===
set hlsearch                      " Set search highlighting
set incsearch                     " Enable showing searches real time
set ignorecase                    " Enable matching uppercase words with lowercase search pattern
set smartcase                     " Enable matching only uppercase words with uppercase search pattern

" Enable spelling
set spelllang=en_us
set spellfile=~/.config/nvim/spell/en.utf-8.add

"===
"=== Colorscheme
"===
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set background=dark
colorscheme gruvbox

" Plugin Settings

" Disable F1 help, CoC maps it for doHover
noremap <F1> <Nop> 

source ~/.config/nvim/coc.vim

let g:lightline = { 'colorscheme': 'gruvbox', 'enable': { 'tabline': 0 } }

"===
"=== Mappings
"===
nmap <silent><leader>ev :e $MYVIMRC<cr>           " Edit vimrc / init file
nmap <silent><leader>sv :so $MYVIMRC<cr>          " Source vimrc / init file
nmap <leader>e :e <C-R>=expand("%:p:h") . "/"<cr> " Create a new file in the dir of the current buffer
nmap <silent><leader>= :silent :nohlsearch<cr>    " Switch off the search highlighting
imap <C-e> <esc>$i<right>                         " Use <Ctrl-e> to move to the end-of-line in insert mode, well emacs in vim!
imap <C-a> <esc>0i                                " Use <Ctrl-a> to move to the beginning-of-line in insert mode

" Toggle numbers
nnoremap <F12> :set nu!<cr>

" Fzf mappings
nnoremap <silent><C-p> :Files<cr>

" Disable ex mode, it can be annoying
nnoremap Q <Nop>
nnoremap gQ <Nop>

" Properly indent visually selected region
vnoremap < <gv
vnoremap > >gv

" Do not move the search under the cursor, I will let you know if move
" is required.
nmap * g*N
nmap # g#N

"===
"=== Tabline and Tab Navigation Settings
"===
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tw <C-w>T

map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>0 :tablast<cr>

" Custom tabline that uses colorscheme highlights
function! Tabline()
    let s = ''
    for i in range(tabpagenr('$'))
        let tab = i + 1
        let winnr = tabpagewinnr(tab)
        let buflist = tabpagebuflist(tab)
        let bufnr = buflist[winnr - 1]
        let bufname = bufname(bufnr)
        let bufmodified = getbufvar(bufnr, "&mod")
        let s .= '%' . tab . 'T'
        let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLineFill#')
        let s .= ' ' . tab . ':'
        let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . '] ' : '[No Name] ')
        if bufmodified
            let s .= '[+] '
        endif
    endfor
    let cwd = fnamemodify(getcwd(), ":~/")
    let s .= '%#TabLineFill#' . '%T%=' . cwd
    return s
endfunction

set showtabline=1
set tabline=%!Tabline()

"===
"=== FileType Settings
"===

" Enable custom settings for different filetypes
augroup FileTypeSettings
    au!
    " Disable auto comment on new lines after the comment line
    au FileType * setlocal formatoptions-=cro 

    " Reorder panes and tabs when window size changes
    au VimResized * wincmd =                  

    " Recognize *.sbt extensions as Scala files
    au BufRead,BufNewFile *.sbt set filetype=scala

    " Recognize *.md extensions as Markdown files
    au BufRead,BufNewFile *.md set filetype=markdown

    " Enable spelling for markdown and gitcommit files
    au BufRead,BufNewFile *.md,gitcommit setlocal spell

    " Enable spelling for Java & Scala files, this checks the comments only
    au FileType java,scala setlocal spell

    " Remove trailing whitespace
    au FileType scala,java autocmd BufWritePre <buffer> :call TrimWhiteSpace()

    " Set correct comment highlighting for jsonc filetypes
    au FileType json syntax match Comment +\/\/.\+$+
augroup end

" Function to remove trailing whitespaces
function! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

"===
"=== Custom Settings
"===

" Custom text formatting with a parameterized textwidth that formats
" visually selected region.
function! CustomTextFormat(width)
    let tempwidth = &textwidth
    let &textwidth=a:width
    normal gvgq
    let &textwidth=tempwidth
endfunction

" Format visually selected lines using 72 chars, counterpart to gq
" command.
vnoremap gj <Esc>:call CustomTextFormat(72)<CR>

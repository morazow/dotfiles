" .vimrc
" A Vim Configuration File
" maintained by :
" Muhammet Orazow <m.orazow@gmail.com>
"

" Pathogen {{{
call pathogen#infect()
call pathogen#helptags()
" }}}

" forget being compatible
set nocompatible

set modelines=1

" set leader to ,
let mapleader=","

" look for definition up in the directory
set tags=.git/tags,./tags,tags;/

" turn on filetype stuff
filetype on
filetype plugin on
filetype indent on

" turn on syntax highlighting
syntax on

" color scheme
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

" tabstops are 4 spaces
set softtabstop=4
set shiftwidth=2
set smarttab
set expandtab " turn tab into spaces

set wrapscan " set the search to wrap lines

" make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=B$ "ces$ --conflicts with snipmate, wtf?!

" edit reload vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" set the status line (taken from Derek Wyatt's .vimrc :) 
" the better one
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]\ 
set stl+=%{fugitive#statusline()}

" put status line in, even if there is only one window
set laststatus=2

set showfulltag " get function usage help automatically
set showcmd     " shows the current command in the lower right corner
set showmode    " shows the current mode
set showmatch   " shows matching parentheses/brackets
set wildmenu    " make the command-line completion
set wildmode=list:longest,full

set hlsearch    " highlight the searches
"set paste       " indent properly when pasting from clipboard
set hidden      " change buffer without saving
set incsearch   " incrementally match the search

" hide mouse pointer while typing
set mousehide

" keeps some history
set history=100
 
" always set autoindenting on
set autoindent
set smartindent

" switch off the search term highlighting
nmap <silent> <leader>= :silent :nohlsearch<cr> 

" toggle paste mode
nmap <Leader>pp :set paste!<cr>

" new file in directory of current buffer
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" toggle numbers
nnoremap <F12> :set nu!<cr>

" map CTRL-E to end-of-line in insert mode,
" well emacs in vim !!
imap <C-e> <esc>$i<right>
" map CTRL-A to beginning-of-line in insert mode
imap <C-a> <esc>0i

" better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tab navigation
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
map <leader>0 :tablast<CR>

" tab name settings, taken from https://github.com/mkitt/tabline.vim

" configure these colors for your liking
hi TabLine      ctermfg=White  ctermbg=NONE     cterm=NONE
hi TabLineFill  ctermfg=White  ctermbg=NONE     cterm=NONE
hi TabLineSel   ctermfg=Green  ctermbg=DarkBlue  cterm=NONE

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
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tab .':'
    let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . '] ' : '[No Name] ')
    if bufmodified
      let s .= '[+] '
    endif
  endfor
  let s .= '%#TabLineFill#'
  return s
endfunction

set tabline=%!Tabline()

" searching for a pattern with smart case sensitivity
set ignorecase
set smartcase

" smart backspace
set backspace=indent,eol,start

" make command line two lines high
set ch=2

" set numbers
set number

" Make tab perform keyword/tag completion if we're not following whitespace
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" Tab completion of tags/keywords if not at the beginning of the
" line.  Very slick.
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

" show extra space with color
let c_space_errors=1

" remove trailing whitespace on save
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

autocmd FileType java setlocal shiftwidth=4 tabstop=4
autocmd FileType scala,java,ruby autocmd BufWritePre <buffer> :call TrimWhiteSpace()

" better git messages
autocmd Filetype gitcommit setlocal spell spelllang=en_us textwidth=72

" markdown
autocmd Filetype markdown setlocal textwidth=80
au Bufread,BufNewFile *.md set filetype=markdown

" spell check in markdown files
autocmd Filetype markdown setlocal spell spelllang=en_us

"
" to dicipline me against using arrow keys
"
if exists("Abuses_loaded")
    finish
endif

let Abuses_loaded = 1
let s:count = 0
let s:insults = ["YOU SUCK!", "OBEY ME, INSECT!", "OBEY ME, SUBSERVIENT BIOMASS!"]

call add(s:insults, "ENGAGE IN COPROPHILIA AND THEN EXPIRE!")
call add(s:insults, "YOU ARE NOT WORTHY OF VIM!")

function <SID>punish_me()
    let s:count = (s:count + 1) % len(s:insults)
    echohl WarningMsg | echo s:insults[s:count] | echohl None
endfunction

nmap <right> :call <SID>punish_me()<cr>
nmap <left>  :call <SID>punish_me()<cr>
nmap <up>    :call <SID>punish_me()<cr>
nmap <down>  :call <SID>punish_me()<cr>

" taken from 
" http://www.reddit.com/r/programming/comments/2ljlv/emacs_bondage_and_disciplinke 
"

" keep all backup files in one place
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Fugitive {{{
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gp :Git push<cr>
" }}}

" Tabularize {{{
"if exists(":Tabularize")
map <leader>a   :Tabularize /
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
map <Leader>a=> :Tabularize /=><CR>
map <Leader>a-> :Tabularize /-><CR>
"endif
" }}}

" Ignore necessary files and folders when using CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.class$\|\.so$'
  \ }

" Ignore also files and folders in .gitignore file
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
  \ 'fallback': 'find %s -type f'
  \ }

" autoreloading of vim config when saving it
autocmd! bufwritepost .vimrc source ~/.vimrc

" vim:foldmethod=marker:foldlevel=0

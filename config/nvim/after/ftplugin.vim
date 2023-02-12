" Set General Settings
augroup GENERAL_SETTINGS
  au!
  au VimResized * :wincmd =
  " Remove Trailing Whitespaces on Save
  au BufWritePre * :%s/\s\+$//e
augroup END

augroup YANK_HIGHLIGHT
    au!
    " Highlight on Yank (Copy)
    au TextYankPost * silent! lua require('vim.highlight').on_yank({on_visual=true,timeout=180})
augroup END

" Set Filetypes
augroup FILETYPE_SETTINGS
  au!
  au BufNewFile,BufRead *.sbt   setlocal filetype=scala
  au BufNewFile,BufRead pom.xml setlocal filetype=xml.pom
  au BufWritePost packer.lua PackerCompile
augroup END

" Exit LspInfo Floating Window Using q Key
augroup LSP_INFO_EXIT
    au!
    au FileType lspinfo nnoremap <silent> <buffer> q :q<cr>
augroup END

" Terminal Settings
" Use C-o, <leader>x or C-d to close and exit terminal.
augroup TERMINAL_SETTINGS
    au!
    au TermOpen * startinsert
    au TermOpen * setlocal nonumber norelativenumber nospell nobuflisted
    au TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
    au TermOpen * tnoremap <buffer> <C-o> <C-\><C-n>:bd!<cr>
    au TermOpen * tnoremap <buffer> <leader>x <C-\><C-n>:bd!<cr>
    au TermClose * call nvim_input('<cr>')
    au TermLeave * stopinsert
augroup END

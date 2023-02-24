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

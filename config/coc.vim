"===
"=== Coc Settings
"===

" I am new to Conquer of Completion, thus I will be improving these
" settings as I learn more about the plugin.

" CoC Extensions
let g:coc_global_extensions = [ 'coc-java', 'coc-json', ]

" Trigger autocomplete in insert mode
inoremap <silent><expr> <c-space> coc#refresh()

"===
"=== Code navigation
"===
nmap <silent><leader>d <Plug>(coc-definition)      " Jump to definition
nmap <silent><leader>i <Plug>(coc-implementation)  " Jump to implementation
nmap <silent><leader>t <Plug>(coc-type-definition) " Jump to type definition
nmap <silent><leader>r <Plug>(coc-references)      " Jump to type references

"===
"=== Diagnostics
"===
nmap <silent><leader>e <Plug>(coc-diagnostic-info) " Show warning or error information
nmap <silent><F5> <Plug>(coc-diagnostic-next)      " Jump to next warning or error
nmap <silent><F4> <Plug>(coc-diagnostic-prev)      " Jump to previous warning or error
nmap <silent><leader>sd :CocList diagnostics<CR>   " Show all diagnostics

"===
"=== Code Actions
"===
nmap <silent><F2> <Plug>(coc-rename)               " Rename symbols
vmap <silent><leader>f <Plug>(coc-format-selected) " Format visually selected code


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped
" by other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at
" current position. Coc only does snippet and additional edit on
" confirm.  <cr> could be remapped by other vim plugin, try `:verbose
" imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use F1 to show documentation in preview window
nnoremap <silent><F1> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType scala setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"=== 
"=== Convenience functions
"===
command! -nargs=0 Format :call CocAction('format') " Adds `:Format` command to format current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>) " Adds `:Fold` command to fold current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport') " Adds `:OR` command to organize imports of the current buffer

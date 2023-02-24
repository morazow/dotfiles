-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local api = vim.api
local augroup = api.nvim_create_augroup
local autocmd = api.nvim_create_autocmd

--- Remove trailing whitespaces on save
local whiteSpaceGroup = augroup('RemoveTrailingWhiteSpaceGroup', { clear = true })
autocmd('BufWritePre', {
    command = [[:%s/\s\+$//e]],
    group = whiteSpaceGroup,
})

local generalGroup = augroup('GeneralGroup', { clear = true })

-- Disable auto comment on new line
autocmd('BufEnter', {
    command = [[set formatoptions-=cro]],
    group = generalGroup,
})

-- Enable cursor line only in active window
local cursorLineGroup = augroup('CursorLine', { clear = true })
autocmd({ 'InsertLeave', 'WinEnter' }, {
    pattern = '*',
    command = 'set cursorline',
    group = cursorLineGroup,
})
autocmd({ 'InsertEnter', 'WinLeave' }, {
    pattern = '*',
    command = 'set nocursorline',
    group = cursorLineGroup,
})

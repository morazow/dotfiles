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
autocmd({ 'InsertLeave', 'WinEnter' }, {
    callback = function()
        local ok, cursorline = pcall(api.nvim_win_get_var, 0, 'auto-cursorline')
        if ok and cursorline then
            vim.wo.cursorline = true
            api.nvim_win_del_var(0, 'auto-cursorline')
        end
    end,
})
autocmd({ 'InsertEnter', 'WinLeave' }, {
    callback = function()
        local cursorline = vim.wo.cursorline
        if cursorline then
            api.nvim_win_set_var(0, 'auto-cursorline', cursorline)
            vim.wo.cursorline = false
        end
    end,
})

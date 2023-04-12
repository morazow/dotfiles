-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Remove 'gw', we use the default mapping for wrapping
vim.keymap.del({ 'n', 'x' }, 'gw')

-- Additional Code Actions
map('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = 'Rename' })

-- Telescope resume
map('n', '<leader>sx', require('telescope.builtin').resume, { desc = 'Resume' })

-- Clear search highlights with <ESC>
map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Clear search highlights' })

-- Tabline and tab navigation
map('n', '<leader><tab><tab>', '<cmd>tabnew<cr>', { desc = 'New Tab' })
map('n', '<leader><tab>f', '<cmd>tabfirst<cr>', { desc = 'First Tab' })
map('n', '<leader><tab>l', '<cmd>tablast<cr>', { desc = 'Last Tab' })
map('n', '<leader><tab>]', '<cmd>tabnext<cr>', { desc = 'Next Tab' })
map('n', '<leader><tab>[', '<cmd>tabprevious<cr>', { desc = 'Previous Tab' })
map('n', '<leader><tab>d', '<cmd>tabclose<cr>', { desc = 'Close Tab' })
map('', '<leader><tab>1', '1gt', { desc = 'Goto 1st tab' })
map('', '<leader><tab>2', '2gt', { desc = 'Goto 2nd tab' })
map('', '<leader><tab>3', '3gt', { desc = 'Goto 3rd tab' })
map('', '<leader><tab>4', '4gt', { desc = 'Goto 4th tab' })
map('', '<leader><tab>5', '5gt', { desc = 'Goto 5th tab' })
map('', '<leader><tab>0', '<cmd>tablast<cr>')

-- Resize window using <alt> arrow keys
map('n', '<A-Up>', '<cmd>resize +2<cr>', { desc = 'Increase window height' })
map('n', '<A-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease window height' })
map('n', '<A-Left>', '<cmd>vertical resize +2<cr>', { desc = 'Decrease window width' })
map('n', '<A-Right>', '<cmd>vertical resize -2<cr>', { desc = 'Increase window width' })

local map = vim.keymap.set
local peek = require('peek')

map('n', '<leader>mp', function()
    peek.open()
end, { desc = 'Open Peek preview' })
map('n', '<leader>mP', function()
    peek.close()
end, { desc = 'Close Peek preview' })

vim.opt_local.autoindent = true
vim.opt_local.colorcolumn = '80'
vim.opt_local.comments:append({ 'nb:+', 'nb:>', 'nb:-', 'nb:.' })
vim.opt_local.foldmethod = 'syntax'
vim.opt_local.formatoptions = 'tcroqln'
vim.opt_local.linebreak = true
vim.opt_local.textwidth = 80
vim.opt_local.wrap = true

vim.opt.spell = true
vim.opt.spelllang = 'en_us'

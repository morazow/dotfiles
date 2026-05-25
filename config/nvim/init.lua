vim.g.mapleader = ' '
vim.g.maplocalleader = ','

if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
    require('config.lazy')
end

-- require('config.lazy')
-- require('settings') -- Sane General Settings
-- require('mappings') -- Extra Keymappings
-- require('plugins') -- Plugin Settings
-- require('lsp') -- Language Server Protocol (LSP) Settings
-- require('themes.onedark') -- Use Onedark Theme

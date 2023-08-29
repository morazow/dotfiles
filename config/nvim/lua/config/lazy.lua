local fn = vim.fn
local lazypath = fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require('lazy').setup({
    spec = {
        { 'LazyVim/LazyVim', import = 'lazyvim.plugins' },
        { import = 'lazyvim.plugins.extras.lang.json' },
        { import = "lazyvim.plugins.extras.coding.copilot" },
        { import = 'plugins' },
        { import = 'plugins.extras.lang.java' },
    },
    defaults = {
        lazy = false,
        version = false,
    },
    install = { colorscheme = { 'tokyonight', 'habamax' } },
    checker = { enabled = false },
    performance = {
        rtp = {
            disabled_plugins = {
                'gzip',
                'matchit',
                'matchparen',
                'netrwPlugin',
                'tarPlugin',
                'tohtml',
                'tutor',
                'zipPlugin',
            },
        },
    },
})

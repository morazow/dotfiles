return {
    -- Misc Plugins
    { 'ellisonleao/gruvbox.nvim' },
    { 'ful1e5/onedark.nvim' },

    -- Configure LazyVim
    {
        'LazyVim/LazyVim',
        opts = {
            colorscheme = 'onedark',
        },
    },

    -- Setup Alpha
    {
        'goolord/alpha-nvim',
        opts = function(_, opts)
            local logo = [[
	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

	                   [ @morazow ]
    ]]
            opts.section.header.val = vim.split(logo, '\n', { trimempty = true })
        end,
    },

    -- Setup Treesitter Parsers
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'andymass/vim-matchup',
        },
        opts = {
            matchup = { enable = true },
            ensure_installed = {
                'bash',
                'c',
                'cmake',
                'help',
                'html',
                'go',
                'java',
                'javascript',
                'json',
                'lua',
                'make',
                'markdown',
                'markdown_inline',
                'query',
                'regex',
                'rust',
                'scala',
                'toml',
                'vim',
                'yaml',
            },
        },
    },

    -- Setup Snippets
    {
        'rafamadriz/friendly-snippets',
        config = function()
            require('luasnip.loaders.from_vscode').lazy_load({
                paths = vim.fn.stdpath('config') .. '/snippets',
            })
            require('luasnip.loaders.from_snipmate').lazy_load()
        end,
    },

    -- Setup Telescope
    {
        'nvim-telescope/telescope-file-browser.nvim',
        keys = {
            {
                '<leader>sB',
                ':Telescope file_browser path=%:p:h=%:p:h<cr>',
                desc = 'Browse Files',
            },
        },
        config = function()
            require('telescope').load_extension('file_browser')
        end,
    },

    -- Setup Markdown Configurations
    {
        'toppair/peek.nvim',
        ft = 'markdown',
        build = 'deno task --quiet build:fast',
        config = function()
            require('peek').setup({
                auto_load = true,
                close_on_bdelete = true,
                syntax = true,
                theme = 'light',
                update_on_change = true,
                throttle_at = 200000,
                throttle_time = 'auto',
            })
            vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
            vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
        end,
    },
}

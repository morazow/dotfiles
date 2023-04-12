return {

    -- Configure LazyVim
    {
        'LazyVim/LazyVim',
        opts = {
            colorscheme = 'onedark',
        },
    },

    -- Misc Plugins
    { 'ellisonleao/gruvbox.nvim' },
    { 'ful1e5/onedark.nvim' },

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

    {
        'nvim-lualine/lualine.nvim',
        opts = function()
            local icons = require('lazyvim.config').icons
            local function fg(name)
                return function()
                    local hl = vim.api.nvim_get_hl_by_name(name, true)
                    return hl and hl.foreground and { fg = string.format('#%06x', hl.foreground) }
                end
            end

            return {
                options = {
                    theme = 'onedark',
                },
                sections = {
                    lualine_b = {
                        { 'branch', separator = '|', padding = { left = 1, right = 0 } },
                        {
                            'diagnostics',
                            symbols = {
                                error = icons.diagnostics.Error,
                                warn = icons.diagnostics.Warn,
                                info = icons.diagnostics.Info,
                                hint = icons.diagnostics.Hint,
                            },
                        },
                    },
                    lualine_c = {
                        { 'filename', path = 1, symbols = { modified = '[+]', readonly = '[-]', unnamed = '' } },
                    },
                    lualine_x = {
                        {
                            require('lazy.status').updates,
                            cond = require('lazy.status').has_updates,
                            color = fg('Special'),
                        },
                        {
                            'diff',
                            symbols = {
                                added = icons.git.added,
                                modified = icons.git.modified,
                                removed = icons.git.removed,
                            },
                        },
                    },
                    lualine_y = { 'filetype' },
                    lualine_z = {
                        { 'location', separator = '|', padding = { left = 1, right = 0 } },
                        { 'progress', separator = '', padding = { left = 0, right = 1 } },
                    },
                },
            }
        end,
    },

    -- Setup Commenting
    -- {
    --     'numToStr/Comment.nvim',
    --     keys = {
    --         { 'g/', '<Plug>(comment_toggle_linewise_current)', desc = 'Comment Linewise' },
    --         -- { '<C-/>', '<Plug>(comment_toggle_linewise_current)', desc = 'Comment Linewise' },
    --         -- { '<C-?>', '<Plug>(comment_toggle_blockwise_current)', desc = 'Comment Blockwise' },
    --         -- { mode = 'x', '<C-/>', '<Plug>(comment_toggle_linewise_visual)', desc = 'Comment Linewise' },
    --         -- { mode = 'x', '<C-?>', '<Plug>(comment_toggle_blockwise_visual)', desc = 'Comment Blockwise' },
    --     },
    --     opts = {
    --         mappings = {
    --             basic = false,
    --             extra = false,
    --         },
    --         pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    --     },
    -- },

    {
        'junegunn/vim-easy-align',
        keys = {
            { mode = 'x', 'ga', '<plug>(EasyAlign)', desc = 'Align selection' },
        },
    },

    -- Setup Treesitter Parsers
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'andymass/vim-matchup',
        },
        opts = function(_, opts)
            opts.matchup = { enable = true }
            if type(opts.ensure_installed) == 'table' then
                vim.tbl_extend('force', opts.ensure_installed, {
                    'bash',
                    'go',
                    'java',
                    'json',
                    'markdown',
                    'markdown_inline',
                    'rust',
                    'lua',
                    'scala',
                    'vim',
                    'yaml',
                })
            end
        end,
    },

    -- Setup Snippets
    {
        'rafamadriz/friendly-snippets',
        config = function()
            require('luasnip/loaders/from_vscode').lazy_load({
                paths = vim.fn.stdpath('config') .. '/snippets',
            })
            require('luasnip/loaders/from_vscode').lazy_load()
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

    -- Git
    { 'tpope/vim-fugitive' },
    { 'tpope/vim-rhubarb' },
    { 'lewis6991/gitsigns.nvim' },

    {
        'stsewd/sphinx.nvim',
        ft = 'rst',
    }
}

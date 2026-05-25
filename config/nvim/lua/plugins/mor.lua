return {
    -- Misc Plugins
    { 'ellisonleao/gruvbox.nvim' },
    { 'ful1e5/onedark.nvim' },

    -- Git
    { 'tpope/vim-fugitive' },
    { 'tpope/vim-rhubarb' },

    -- Configure LazyVim
    {
        'LazyVim/LazyVim',
        opts = {
            colorscheme = 'onedark',
        },
    },

    -- Update Alpha
    -- {
    --     'goolord/alpha-nvim',
    --     opts = function(_, opts)
    --         local logo = [[
	  -- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
	  -- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
	  -- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
	  -- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
	  -- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
	  -- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

	  --                  [ @morazow ]
    -- ]]
    --         opts.section.header.val = vim.split(logo, '\n', { trimempty = true })
    --     end,
    -- },

    { "folke/snacks.nvim", opts = { dashboard = { enabled = false } } },

    {
        "goolord/alpha-nvim",
        config = function ()
            local alpha = require'alpha'
            local dashboard = require'alpha.themes.dashboard'
            dashboard.section.header.val = {
                [[                               __                ]],
                [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
                [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
                [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
                [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
                [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
            }
            dashboard.section.buttons.val = {
                dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
                dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
            }
            local handle = io.popen('fortune')
            local fortune = handle:read("*a")
            handle:close()
            dashboard.section.footer.val = fortune

            dashboard.config.opts.noautocmd = true

            vim.cmd[[autocmd User AlphaReady echo 'ready']]

            alpha.setup(dashboard.config)
        end
    },

    -- {
    --     'goolord/alpha-nvim',
    --     config = function ()
    --         require'alpha'.setup(require'alpha.themes.dashboard'.config)
    --     end
    -- },

    -- {
    --     "goolord/alpha-nvim",
    --     optional = true,
    --     opts = function(_, dashboard)
    --         local button = dashboard.button("p", " " .. " Projects", [[<cmd> lua Snacks.picker.projects() <cr>]])
    --         button.opts.hl = "AlphaButtons"
    --         button.opts.hl_shortcut = "AlphaShortcut"
    --         table.insert(dashboard.section.buttons.val, 4, button)
    --     end,
    -- },

    -- Filetypes
    { 'stsewd/sphinx.nvim', ft = 'rst' },

    {
        'nvim-lualine/lualine.nvim',
        opts = function()
            return {
                options = {
                    theme = 'onedark',
                },
            }
        end,
    },

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
            opts.highlight = {
                enable = true,
                additional_vim_regex_highlighting = { 'markdown' },
            }
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, {
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

}

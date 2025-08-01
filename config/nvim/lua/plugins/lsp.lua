return {
    {
        'williamboman/mason.nvim',
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, {
                'bash-language-server',
                'dockerfile-language-server',
                -- 'gopls',
                'lemminx',
                'luacheck',
                'lua-language-server',
                'prettierd',
                'prosemd-lsp',
                'rust-analyzer',
                'shfmt',
                'shellcheck',
                'sonarlint-language-server',
                'terraform-ls',
                'yamlfmt',
                'yaml-language-server',
            })
        end,
    },

    {
        'neovim/nvim-lspconfig',
        opts = {
            diagnostics = {
                virtual_text = false,
            },
            servers = {
                bashls = {},
                dockerls = {},
                jsonls = {},
                lemminx = {},
                terraformls = {},
                yamlls = {
                    settings = {
                        yaml = {
                            keyOrdering = false,
                        },
                    },
                },
                esbonio = {},
            },
        },
    },

    {
        'nvim-neotest/neotest',
        dependencies = {
            'rcasia/neotest-java',
        },
        opts = function(_, opts)
            table.insert(opts.adapters, require('neotest-java'))
        end,
        status = { virtual_text = false },
        output = { open_on_run = true },
    },

    {
        'simrat39/symbols-outline.nvim',
        lazy = true,
        cmd = {
            'SymbolsOutline',
            'SymbolsOutlineOpen',
            'SymbolsOutlineClose',
        },
    },

    {
        'https://gitlab.com/schrieveslaach/sonarlint.nvim',
        ft = { 'java', 'xml' },
        opts = function()
            local sonarlint_path = require('mason-registry').get_package('sonarlint-language-server'):get_install_path()
            return {
                server = {
                    cmd = {
                        'sonarlint-language-server',
                        -- Ensure that sonarlint-language-server uses stdio channel
                        '-stdio',
                        '-analyzers',
                        sonarlint_path .. '/extension/analyzers/sonarjava.jar',
                        sonarlint_path .. '/extension/analyzers/sonarxml.jar',
                    },
                },
                filetypes = {
                    'java',
                    'xml',
                },
            }
        end,
    },
}

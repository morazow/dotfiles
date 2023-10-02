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
            autoformat = false,
            servers = {
                bashls = {},
                dockerls = {},
                -- gopls = {},
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
            'rcasia/neotest-java'
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
        'scalameta/nvim-metals',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'mfussenegger/nvim-dap',
        },
        config = function()
            local on_attach = function(client, bufnr)
                require('lazyvim.plugins.lsp.keymaps').on_attach(client, bufnr)
            end
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
            capabilities.textDocument.completion.completionItem.snippetSupport = true

            local config = require('metals').bare_config()
            config.capabilities = capabilities
            config.init_options.statusBarProvider = 'on'
            config.settings = {
                showInferredType = true,
                showImplicitArguments = true,
                showImplicitConversionsAndClasses = true,
                superMethodLensesEnabled = true,
                excludedPackages = {
                    'akka.actor.typed.javadsl',
                    'akka.stream.javadsl',
                    'com.github.swagger.akka.javadsl',
                },
            }

            config.on_attach = function(client, bufnr)
                require('metals').setup_dap()
                on_attach(client, bufnr)
            end

            local metals_group = vim.api.nvim_create_augroup('nvim-metals', { clear = true })
            vim.api.nvim_create_autocmd('FileType', {
                pattern = { 'scala', 'sbt' },
                callback = function()
                    require('metals').initialize_or_attach(config)
                end,
                group = metals_group,
            })
        end,
    },

    {
        'zbirenbaum/copilot.lua',
        event = 'InsertEnter',
        opts = {
            panel = {
                enabled = true,
                auto_refresh = false,
                keymap = {
                    jump_prev = '[[',
                    jump_next = ']]',
                    accept = '<CR>',
                    refresh = 'gr',
                    open = '<M-CR>',
                },
                layout = {
                    position = 'bottom', -- | top | left | right
                    ratio = 0.4,
                },
            },
            suggestion = {
                enabled = true,
                auto_trigger = false,
                debounce = 75,
                keymap = {
                    accept = '<Tab>',
                    close = '<Esc>',
                    next = '<C-j>',
                    prev = '<C-k>',
                    select = '<CR>',
                    dismiss = '<C-\\>',
                },
            },
            filetypes = {
                markdown = true,
                help = true,
            },
        },
    },
}

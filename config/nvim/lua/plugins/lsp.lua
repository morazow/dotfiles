return {
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                'bash-language-server',
                'dockerfile-language-server',
                'gopls',
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
            },
        },
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
                gopls = {},
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
        'JavaHello/java-deps.nvim',
        lazy = true,
        ft = 'java',
        dependencies = {
            'mfussenegger/nvim-jdtls',
        },
        config = function()
            require('java-deps').setup({})
        end,
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
        'mfussenegger/nvim-dap',
        event = 'VeryLazy',
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
                -- fallbackScalaVersion = '2.13.6',
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

    -- Setup Formatters
    {
        'jose-elias-alvarez/null-ls.nvim',
        opts = function()
            local nls = require('null-ls')
            local formatting = nls.builtins.formatting
            local diagnostics = nls.builtins.diagnostics
            local actions = nls.builtins.code_actions
            return {
                sources = {
                    formatting.gofmt,
                    formatting.prettier.with({
                        filetypes = { 'json', 'markdown', 'toml' },
                    }),
                    formatting.shfmt,
                    formatting.stylua.with({
                        extra_args = function(_)
                            local default_cfg = vim.fn.stdpath('config') .. '/.stylua.toml'
                            local root_cfg = vim.fs.find({ '.stylua.toml', 'stylua.toml' }, { upward = true })
                            local cfg = ''
                            if #root_cfg == 0 then
                                cfg = default_cfg
                            else
                                cfg = root_cfg[1]
                            end
                            return { '--config-path', cfg }
                        end,
                    }),
                    formatting.terraform_fmt,
                    diagnostics.shellcheck,
                    actions.shellcheck,
                },
            }
        end,
    },

    -- Setup DAP
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {
            { 'mfussenegger/nvim-dap' },
            { 'theHamsta/nvim-dap-virtual-text' },
        },
        keys = {
            {
                '<leader>dr',
                function()
                    require('dapui').toggle({})
                end,
                { noremap = true, silent = true, desc = 'Toggle DAP UI' },
            },
            {
                '<F5>',
                function()
                    require('dap').continue({})
                end,
                desc = 'Debug Continue',
            },
            {
                '<F9>',
                function()
                    require('dap').run_to_cursor()
                end,
                desc = 'Debug Run to Cursor',
            },
            {
                '<F10>',
                function()
                    require('dap').step_over()
                end,
                desc = 'Debug Step Over',
            },
            {
                '<F11>',
                function()
                    require('dap').step_into()
                end,
                desc = 'Debug Step Into',
            },
            {
                '<F12>',
                function()
                    require('dap').step_out()
                end,
                desc = 'Debug Step Out',
            },
            {
                '<leader>b',
                function()
                    require('dap').toggle_breakpoint()
                end,
                desc = 'Debug Toggle Breakpoint',
            },
            {
                '<leader>B',
                function()
                    require('dap').set_breakpoint(vim.fn.input({ 'Breakpoint Condition: ' }))
                end,
                desc = 'Debug Toggle Conditional Breakpoint',
            },
            {
                '<leader>dr',
                function()
                    require('dap').repl.open()
                end,
                desc = 'Debug Open Repl',
            },
        },
        config = function()
            require('dapui').setup()
            require('nvim-dap-virtual-text').setup({})
            vim.cmd([[command -nargs=0 Into :lua require('dap').step_into()]])
            vim.cmd([[command -nargs=0 DapBreakpoints :lua require('dap').list_breakpoints()]])
            vim.fn.sign_define('DapStopped', { text = '🟢', texthl = '', linehl = '', numhl = '' })
            vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
            vim.fn.sign_define('DapBreakpointRejected', { text = '⛔️', texthl = '', linehl = '', numhl = '' })

            local dap = require('dap')
            dap.configurations.scala = {
                {
                    type = 'scala',
                    request = 'launch',
                    name = 'RunOrTest',
                    metals = {
                        runType = 'runOrTestFile',
                    },
                },
                {
                    type = 'scala',
                    request = 'launch',
                    name = 'Test Target',
                    metals = {
                        runType = 'testTarget',
                    },
                },
            }
        end,
    },
}

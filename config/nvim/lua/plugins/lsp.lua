return {
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                'bash-language-server',
                'dockerfile-language-server',
                'gopls',
                'jdtls',
                'lua-language-server',
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
                virtual_text = true,
            },
            servers = {
                bashls = {},
                dockerls = {},
                gopls = {},
                jsonls = {},
                terraformls = {},
                yamlls = {},
            },
            setup = {
                jdtls = function(_, _)
                    return true
                end,
            },
        },
    },

    {
        'mfussenegger/nvim-jdtls',
        ft = 'java',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'mfussenegger/nvim-dap',
        },
        config = function()
            local jdtls = require('jdtls')
            local map = require('utils').buffer_keymap
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
            capabilities.textDocument.completion.completionItem.snippetSupport = true

            local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
            local workspace_dir = vim.fn.stdpath('data') .. '/site/java/workspace-root/' .. project_name
            local install_path = require('mason-registry').get_package('jdtls'):get_install_path()
            local config = {
                cmd = { install_path .. '/bin/jdtls', '-data', workspace_dir },
                on_attach = function(client, bufnr)
                    require('lazyvim.plugins.lsp.keymaps').on_attach(client, bufnr)
                    jdtls.setup_dap({ hotcodereplace = 'auto' })
                    jdtls.dap.setup_dap_main_class_configs()
                    jdtls.setup.add_commands()
                    print('on attach jdtls')

                    -- Additional JDTLS Specific Key Mappings
                    map(bufnr, 'n', '<A-o>', '<cmd>lua require("jdtls").organize_imports()<cr>', 'Organize imports')
                    map(
                        bufnr,
                        'n',
                        '<leader>ev',
                        '<cmd>lua require("jdtls").extract_variable()<cr>',
                        'Extract variable'
                    )
                    map(
                        bufnr,
                        'v',
                        '<leader>ev',
                        '<esc><cmd>lua require("jdtls").extract_variable(true)<cr>',
                        'Extract variable'
                    )
                    map(
                        bufnr,
                        'n',
                        '<leader>ec',
                        '<cmd>lua require("jdtls").extract_constant()<cr>',
                        'Extract constant'
                    )
                    map(
                        bufnr,
                        'v',
                        '<leader>ec',
                        '<esc><cmd>lua require("jdtls").extract_constant(true)<cr>',
                        'Extract constant'
                    )
                    map(
                        bufnr,
                        'v',
                        '<leader>em',
                        '<esc><cmd>lua require("jdtls").extract_method(true)<cr>',
                        'Extract method'
                    )
                    map(
                        bufnr,
                        'n',
                        '<leader>df',
                        '<cmd>lua require("jdtls").test_class()<cr>',
                        'Run test class in debug'
                    )
                    map(
                        bufnr,
                        'n',
                        '<leader>dn',
                        '<cmd>lua require("jdtls").test_nearest_method()<cr>',
                        'Run nearest method in debug'
                    )
                    -- Code Actions
                    map(bufnr, 'n', '<A-CR>', '<cmd>lua require("jdtls").code_action()<cr>', 'Run code action')
                    map(bufnr, 'v', '<A-CR>', '<esc><cmd>lua require("jdtls").code_action(true)<cr>', 'Run code action')
                    map(
                        bufnr,
                        'n',
                        '<leader>r',
                        '<cmd>lua require("jdtls").code_action(false, "refactor")<cr>',
                        'Run refactor action'
                    )
                    map(
                        bufnr,
                        'v',
                        '<leader>r',
                        '<esc><cmd>lua require("jdtls").code_action(true, "refactor")<cr>',
                        'Run refactor action'
                    )
                    print('on attach jdtls: after mappings')
                end,
                capabilities = capabilities,
                root_dir = vim.fs.dirname(
                    vim.fs.find({ '.gradlew', '.git', 'mvnw', 'pom.xml', 'build.gradle' }, { upward = true })[1]
                ),
                settings = {
                    java = {
                        signatureHelp = { enabled = true },
                        contentProvider = { preferred = 'fernflower' },
                        completion = {
                            favoriteStaticMembers = {
                                'org.hamcrest.MatcherAssert.assertThat',
                                'org.hamcrest.Matchers.*',
                                'org.hamcrest.CoreMatchers.*',
                                'org.junit.jupiter.api.Assertions.*',
                                'java.util.Objects.requireNonNull',
                                'java.util.Objects.requireNonNullElse',
                                'org.mockito.Mockito.*',
                            },
                        },
                        sources = {
                            organizeImports = {
                                starThreshold = 9999,
                                staticStarThreshold = 9999,
                            },
                        },
                        codeGeneration = {
                            toString = {
                                template = '${object.className}{${member.name()}=${member.value}, ${otherMembers}}',
                            },
                        },
                        configuration = {
                            runtimes = {
                                {
                                    name = 'JavaSE-17',
                                    path = '~/.sdkman/candidates/java/17.0.6-tem/',
                                },
                                {
                                    name = 'JavaSE-11',
                                    path = '~/.sdkman/candidates/java/11.0.18-tem/',
                                },
                            },
                        },
                    },
                },
            }

            local jdtls_group = vim.api.nvim_create_augroup('nvim-jdtls', { clear = true })
            vim.api.nvim_create_autocmd('FileType', {
                pattern = 'java',
                callback = function()
                    require('jdtls').start_or_attach(config)
                end,
                group = jdtls_group,
            })
        end,
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
                    -- formatting.yamlfmt.with({
                    --     -- extra_args = { "--config-file", linterConfig .. "/.yamllint.yaml" },
                    --     extra_args = function(_)
                    --         local default_cfg = vim.fn.stdpath('config') .. '/.yamllint.yml'
                    --         local root_cfg = vim.fs.find({ '.yamllint.yml', 'yamllint.yml' }, { upward = true })
                    --         local cfg = ''
                    --         if #root_cfg == 0 then
                    --             cfg = default_cfg
                    --         else
                    --             cfg = root_cfg[1]
                    --         end
                    --         return { '--config-path', cfg }
                    --     end,
                    -- }),
                    diagnostics.shellcheck,
                    -- diagnostics.yamllint,
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

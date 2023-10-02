local function create_base_config()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    return {
        handlers = {},
        capabilities = capabilities,
        flags = {
            allow_incremental_sync = true,
            server_side_fuzzy_completion = true,
        },
        settings = {
            jdt = {
                ls = {
                    lombokSupport = { enabled = true },
                },
            },
            java = {
                contentProvider = { preferred = 'fernflower' },
                symbols = {
                    includeSourceMethodDeclarations = true,
                },
                quickfix = {
                    showAt = true,
                },
                selectionRange = { enabled = true },
                recommendations = {
                    dependency = {
                        analytics = {
                            show = true,
                        },
                    },
                },
                format = {
                    comments = {
                        enabled = false,
                    },
                    onType = {
                        enabled = true,
                    },
                },
                maxConcurrentBuilds = 5,
                saveActions = {
                    organizeImports = false,
                },
                trace = {
                    server = 'verbose',
                },
                referencesCodeLens = { enabled = true },
                implementationsCodeLens = { enabled = true },
                signatureHelp = {
                    enabled = true,
                    description = {
                        enabled = true,
                    },
                },
                configuration = {
                    updateBuildConfiguration = 'automatic',
                    runtimes = {
                        {
                            name = 'JavaSE-20',
                            path = '~/.sdkman/candidates/java/20.0.2-tem/',
                        },
                        {
                            name = 'JavaSE-17',
                            path = '~/.sdkman/candidates/java/17.0.8.1-tem/',
                        },
                        {
                            name = 'JavaSE-11',
                            path = '~/.sdkman/candidates/java/11.0.20-tem/',
                        },
                    },
                },
                codeGeneration = {
                    toString = {
                        template = '${object.className}{${member.name()}=${member.value}, ${otherMembers}}',
                    },
                    hashCodeEquals = {
                        useJava7Objects = true,
                    },
                    useBlocks = true,
                    generateComments = true,
                },
                completion = {
                    overwrite = false,
                    guessMethodArguments = true,
                    favoriteStaticMembers = {
                        'org.hamcrest.MatcherAssert.assertThat',
                        'org.hamcrest.Matchers.*',
                        'org.hamcrest.CoreMatchers.*',
                        'org.junit.jupiter.api.Assertions.*',
                        'java.util.Objects.requireNonNull',
                        'java.util.Objects.requireNonNullElse',
                        'org.mockito.Mockito.*',
                    },
                    filteredTypes = {
                        'com.sun.*',
                        'io.micrometer.shaded.*',
                        'java.awt.*',
                        'jdk.*',
                        'sun.*',
                    },
                    importOrder = {
                        '#',
                        'java',
                        'javax',
                        'org',
                        'com',
                    },
                },
                import = {
                    gradle = { enabled = true },
                    maven = { enabled = true },
                    generatesMetadataFilesAtProjectRoot = false,
                    exclusions = {
                        '**/node_modules/**',
                        '**/.metadata/**',
                        '**/archetype-resources/**',
                        '**/META-INF/maven/**',
                        '**/Frontend/**',
                        '**/CSV_Aggregator/**',
                    },
                },
                maven = {
                    downloadSources = true,
                },
                eclipse = {
                    downloadSources = true,
                },
                autobuild = { enabled = true },
                flags = {
                    allow_incremental_sync = true,
                    server_side_fuzzy_completion = true,
                },
                inlayHints = {
                    parameterNames = { enabled = 'literals' },
                },
                references = {
                    includeDecompiledSources = true,
                },
                sources = {
                    organizeImports = {
                        starThreshold = 4,
                        staticStarThreshold = 4,
                    },
                },
            },
        },
    }
end

local function create_init_options()
    local fn = vim.fn
    local tools_dir = os.getenv('HOME') .. '/Devel/git/tools'

    local jar_patterns = {
        '/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar',
        '/vscode-java-test/java-extension/com.microsoft.java.test.plugin/target/*.jar',
        '/vscode-java-test/java-extension/com.microsoft.java.test.runner/target/*.jar',
        '/vscode-java-dependency/server/*.jar',
    }
    -- npm install broke for me: https://github.com/npm/cli/issues/2508
    -- So gather the required jars manually; this is based on the gulpfile.js in the vscode-java-test repo
    local plugin_path =
        '/vscode-java-test/java-extension/com.microsoft.java.test.plugin.site/target/repository/plugins/'
    local bundle_list = vim.tbl_map(function(x)
        return require('jdtls.path').join(plugin_path, x)
    end, {
        'junit-jupiter-*.jar',
        'junit-platform-*.jar',
        'junit-vintage-engine_*.jar',
        'org.opentest4j*.jar',
        'org.apiguardian.api_*.jar',
        'org.eclipse.jdt.junit4.runtime_*.jar',
        'org.eclipse.jdt.junit5.runtime_*.jar',
        'org.opentest4j_*.jar',
    })
    vim.list_extend(jar_patterns, bundle_list)

    local bundles = {}
    for _, jar_pattern in ipairs(jar_patterns) do
        for _, bundle in ipairs(vim.split(vim.fn.glob(tools_dir .. jar_pattern), '\n')) do
            if
                not vim.endswith(bundle, 'com.microsoft.java.test.runner-jar-with-dependencies.jar')
                and not vim.endswith(bundle, 'com.microsoft.java.test.runner.jar')
            then
                table.insert(bundles, bundle)
            end
        end
    end

    local extendedClientCapabilities = require('jdtls').extendedClientCapabilities
    extendedClientCapabilities.resolveAdditionalTextEditsSupport = true
    extendedClientCapabilities.progressReportProvider = false
    return {
        bundles = bundles,
        extendedClientCapabilities = extendedClientCapabilities,
    }
end

local function create_jdtls_config()
    if vim.fn.has('mac') == 1 then
        CONFIG = 'mac'
    elseif vim.fn.has('unix') == 1 then
        CONFIG = 'linux'
    else
        print('Unsupported system')
    end

    local home = os.getenv('HOME')
    local jdtls_path = home .. '/Devel/git/tools/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository'
    local jdtls_bin = jdtls_path .. '/bin/jdtls'

    local config = create_base_config()
    config.init_options = create_init_options()
    config.on_init = function(client, _)
        client.notify('workspace/didChangeConfiguration', { settings = config.settings })
    end
    config.handlers['language/status'] = function(_, s)
        if 'ServiceReady' == s.type then
            require('jdtls.dap').setup_dap_main_class_configs({ verbose = true })
        end
    end

    local jdtls = require('jdtls')
    local root_markers = { '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' }
    local root_dir = jdtls.setup.find_root(root_markers)
    if root_dir == '' then
        print('Failed to find Java root markers.')
        return
    end
    local workspace_folder = '/tmp/jdtls/' .. vim.fn.fnamemodify(root_dir, ':p:h:t')
    config.root_dir = root_dir
    config.cmd = {
        jdtls_bin,
        '-data',
        workspace_folder,
        '--jvm-arg=-Xms2G',
        '--jvm-arg=-Xmx4G',
        '--jvm-arg=-XX:+UseZGC',
        '--jvm-arg=-XX:GCTimeRatio=4',
        '--jvm-arg=-XX:AdaptiveSizePolicyWeight=90',
        '--jvm-arg=-XX:+UseStringDeduplication',
        '--jvm-arg=-Dsun.zip.disableMemoryMapping=true',
        '--jvm-arg=-Dlog.level=ALL',
    }
    config.on_attach = function(client, buffer)
        require('lazyvim.plugins.lsp.keymaps').on_attach(client, buffer)
    end

    return config
end

return {
    {
        'JavaHello/java-deps.nvim',
        ft = 'java',
        lazy = true,
        config = function()
            require('java-deps').setup({})
        end,
    },

    {
        'mfussenegger/nvim-jdtls',
        ft = 'java',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'mfussenegger/nvim-dap',
            'JavaHello/java-deps.nvim',
            'folke/which-key.nvim',
        },
        config = function()
            local config = create_jdtls_config() or {}
            local function jdtls_start_or_attach()
                require('jdtls').start_or_attach(config)
            end

            -- Attach the jdtls for each java buffer. HOWEVER, this plugin loads
            -- depending on filetype, so this autocmd doesn't run for the first file.
            -- For that, we call directly below.
            vim.api.nvim_create_autocmd('FileType', {
                pattern = 'java',
                callback = jdtls_start_or_attach,
            })

            -- Setup keymap and dap after the lsp is fully attached.
            -- https://github.com/mfussenegger/nvim-jdtls#nvim-dap-configuration
            -- https://neovim.io/doc/user/lsp.html#LspAttach
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if client and client.name == 'jdtls' then
                        local jdtls = require('jdtls')
                        local wk = require('which-key')
                        wk.register({
                            ['gs'] = { jdtls.super_implementation, 'Goto Super' },
                            ['gS'] = { require('jdtls.tests').goto_subjects, 'Goto Subjects' },
                            ['<leader>cx'] = { name = '+extract' },
                            ['<leader>cxv'] = { jdtls.extract_variable_all, 'Extract Variable' },
                            ['<leader>cxc'] = { jdtls.extract_constant, 'Extract Constant' },
                            ['<leader>co'] = { jdtls.organize_imports, 'Organize Imports' },
                        }, { mode = 'n', buffer = args.buf })
                        wk.register({
                            ['<leader>c'] = { name = '+code' },
                            ['<leader>cx'] = { name = '+extract' },
                            ['<leader>cxm'] = {
                                [[<esc><cmd>lua require('jdtls').extract_method(true)<cr>]],
                                'Extract Method',
                            },
                            ['<leader>cxv'] = {
                                [[<esc><cmd>lua require('jdtls').extract_variable_all(true)<cr>]],
                                'Extract Variable',
                            },
                            ['<leader>cxc'] = {
                                [[<esc><cmd>lua require('jdtls').extract_constant(true)<cr>]],
                                'Extract Constant',
                            },
                        }, { mode = 'v', buffer = args.buf })

                        -- Custom init for Java debugger
                        jdtls.setup_dap({ hotcodereplace = 'auto', config_overrides = {} })
                        require('jdtls.dap').setup_dap_main_class_configs()

                        -- Custom keymaps for Java specific test runner
                        wk.register({
                            ['<leader>J'] = { name = '+JavaDebugTest' },
                            ['<leader>Jt'] = { jdtls.test_class, 'Run All Test in Debug' },
                            ['<leader>Jn'] = {
                                function()
                                    jdtls.test_nearest_method({ config_overrides = {
                                        stepFilters = {
                                            skipClasses = {"$JDK", "junit.*"},
                                            skipSynthetics = true
                                        }
                                    } })
                                end,
                                'Run Nearest Test in Debug',
                            },
                            ['<leader>Js'] = { jdtls.pick_test, 'Select Test to Run in Debug' },
                        }, { mode = 'n', buffer = args.buf })
                        vim.api.nvim_buf_create_user_command(
                            args.buf,
                            'JavaProjects',
                            require('java-deps').toggle_outline,
                            {
                                nargs = 0,
                            }
                        )
                        vim.api.nvim_create_autocmd('BufWritePost', {
                            buffer = args.buf,
                            callback = function()
                                client.request_sync('java/buildWorkspace', false, 5000, args.buf)
                            end,
                        })
                    end
                end,
            })

            -- Avoid race condition by calling attach the first time, since the autocmd won't fire.
            jdtls_start_or_attach()
        end,
        -- Notes:
        -- require("jdtls.setup").add_commands(), not required since start automatically adds commands
        -- require('jdtls').start_or_attach(config), existing server will be reused if the root_dir matches
    },
}

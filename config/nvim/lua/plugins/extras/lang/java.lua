local M = {
    'mfussenegger/nvim-jdtls',
    ft = 'java',
    dependencies = {
        'hrsh7th/nvim-cmp',
        'mfussenegger/nvim-dap',
        'JavaHello/java-deps.nvim',
    },
}

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
                    organizeImports = true,
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
                            name = 'JavaSE-17',
                            path = '~/.sdkman/candidates/java/17.0.6-tem/',
                        },
                        {
                            name = 'JavaSE-11',
                            path = '~/.sdkman/candidates/java/11.0.18-tem/',
                        },
                        {
                            name = 'JavaSE-1.8',
                            path = '~/.sdkman/candidates/java/8.0.362-tem/',
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
    -- Java Debug Plugin
    local debug_plugin = tools_dir
        .. '/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar'
    local bundles = { fn.glob(debug_plugin) }

    -- Java Test Plugin
    local test_plugin = tools_dir .. '/vscode-java-test/server/*.jar'
    bundles = vim.list_extend(bundles, vim.split(fn.glob(test_plugin), '\n', { trimempty = true }), 1, #bundles)

    -- Java Dependency Plugin
    local dependency_plugin = tools_dir .. '/vscode-java-dependency/server/*.jar'
    bundles = vim.list_extend(bundles, vim.split(fn.glob(dependency_plugin), '\n', { trimempty = true }), 1, #bundles)

    local extendedClientCapabilities = require('jdtls').extendedClientCapabilities
    extendedClientCapabilities.resolveAdditionalTextEditsSupport = true
    extendedClientCapabilities.progressReportProvider = false
    return {
        bundles = bundles,
        extendedClientCapabilities = extendedClientCapabilities,
    }
end

local function print_test_results(items)
    print(vim.inspect(items))
    if #items > 0 then
        vim.cmd([[Trouble quickfix]])
    else
        vim.cmd([[TroubleClose quickfix]])
    end
end

local function custom_keymaps(buffer)
    local map = vim.keymap.set
    local jdtls = require('jdtls')
    map('n', '<leader>co', function()
        jdtls.organize_imports()
    end, { buffer = buffer, desc = 'Organize Imports' })
    map('n', '<leader>ct', function()
        jdtls.pick_test({ bufnr = buffer, after_test = print_test_results })
    end, { buffer = buffer, desc = 'Run Test' })
    map('n', '<leader>ctf', function()
        jdtls.test_class()
    end, { buffer = buffer, desc = 'Run test class in debug' })
    map('n', '<leader>ctn', function()
        jdtls.test_nearest_method()
    end, { buffer = buffer, desc = 'Run nearest method in debug' })
end

M.config = function()
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

    vim.api.nvim_create_autocmd('FileType', {
        pattern = 'java',
        callback = function()
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
                require('lazyvim.plugins.lsp.format').on_attach(client, buffer)
                require('lazyvim.plugins.lsp.keymaps').on_attach(client, buffer)
                custom_keymaps(buffer)

                require('jdtls').setup_dap({ hotcodereplace = 'auto' })
                require('jdtls.setup').add_commands()
                require('java-deps').attach(client, buffer, root_dir)
                vim.api.nvim_buf_create_user_command(buffer, 'JavaProjects', require('java-deps').toggle_outline, {
                    nargs = 0,
                })
            end
            jdtls.start_or_attach(config)
        end,
    })
end

return M

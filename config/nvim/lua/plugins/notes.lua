local preview = {
    'iamcco/markdown-preview.nvim',
    build = 'cd app && npm install && git reset --hard',
    cmd = { 'MarkdownPreview', 'MarkdownPreviewStop', 'MarkdownPreviewToggle' },
    event = 'VeryLazy',
    ft = { 'markdown' },
    config = function()
        local wk = require('which-key')
        wk.register({
            m = {
                name = 'Markdown',
                p = { ':MarkdownPreview<CR>', 'Start Preview' },
                s = { ':MarkdownPreviewStop<CR>', 'Stop Preview' },
                t = { ':MarkdownPreviewToggle<CR>', 'Toggle Preview' },
            },
        }, {
            prefix = '<leader>',
            mode = 'n',
            { silent = true },
        })
    end,
}

local peek = {
    'toppair/peek.nvim',
    build = 'deno task --quiet build:fast',
    ft = 'markdown',
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
        local wk = require('which-key')
        wk.register({
            m = {
                name = 'Markdown',
                o = { ':PeekOpen<CR>', 'Peek Open' },
                c = { ':PeekClose<CR>', 'Peek Stop' },
            },
        }, {
            prefix = '<leader>',
            mode = 'n',
            { silent = true },
        })
    end,
}

local obsidian = {
    'epwalsh/obsidian.nvim',
    dependencies = {
        'hrsh7th/nvim-cmp',
        'nvim-lua/plenary.nvim',
        'preservim/vim-markdown',
        'nvim-telescope/telescope.nvim',
    },
    opts = {
        dir = vim.env.HOME .. '/Devel/git/mor/obsidian-notes/',
        notes_subdir = 'roam',
        daily_notes = {
            folder = 'journal',
        },
        note_id_func = function(title)
            local identifier = ''
            if title ~= nil then -- If title is given, transform it
                identifier = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
            else -- Else generate 4 random uppercase letters
                for _ = 1, 4 do
                    identifier = identifier .. string.char(math.random(65, 90))
                end
            end
            return identifier
        end,
        note_frontmatter_func = function(note)
            local out = { id = note.id, aliases = note.aliases, tags = note.tags, published = false }
            -- `note.metadata` contains any manually added fields in the frontmatter.
            -- So here we just make sure those fields are kept in the frontmatter.
            if note.metadata ~= nil and require('obsidian').util.table_length(note.metadata) > 0 then
                for k, v in pairs(note.metadata) do
                    out[k] = v
                end
            end
            local current_date_time = os.date('%Y-%m-%d %H:%M')
            if out.created_at == nil then
                out.created_at = current_date_time
            end
            out.modified_at = current_date_time
            return out
        end,
        completion = {
            nvim_cmp = true,
            min_chars = 2,
            new_notes_location = 'current_dir',
            prepend_note_id = false,
        },
        mappings = {},
        templates = {
            subdir = 'templates',
            date_format = '%Y-%m-%d-%a',
            time_format = '%H:%M',
        },
    },
    config = function(_, opts)
        require('obsidian').setup(opts)
        local augroup = vim.api.nvim_create_augroup('MOR_MARKDOWN', { clear = false })
        vim.api.nvim_create_autocmd('FileType', {
            group = augroup,
            pattern = 'markdown',
            callback = function()
                vim.keymap.set('n', '<CR>', function()
                    if require('obsidian').util.cursor_on_markdown_link() then
                        vim.cmd([[ObsidianFollowLink]])
                    end
                end, { buffer = true })
            end,
        })
        local wk = require('which-key')
        wk.register({
            o = {
                name = 'Obsidian',
                b = { ':ObsidianBacklinks<CR>', 'Create location list of references to current buffer' },
                l = { ':ObsidianLinkNew<CR>', 'Create a new note and link it to visual selection' },
                n = {
                    function()
                        local title = vim.fn.input('title: ')
                        if title ~= '' then
                            vim.cmd('ObsidianNew ' .. title)
                        end
                    end,
                    'Create a new note',
                },
                s = { ':ObsidianSearch<CR>', 'Search for notes' },
                t = { ':ObsidianQuickSwitch<CR>', 'Quickly switch to another note' },
            },
        }, {
            prefix = '<leader>',
            mode = 'n',
            { silent = true },
        })
    end,
}

return {
    peek,
    preview,
    { 'simrat39/symbols-outline.nvim', event = 'VeryLazy' },
    { 'stevearc/aerial.nvim', event = 'VeryLazy' },
    { 'godlygeek/tabular', event = 'VeryLazy' },
    {
        'preservim/vim-markdown',
        event = 'VeryLazy',
        config = function()
            vim.g.vim_markdown_math = true
            vim.g.vim_markdown_frontmatter = true
            vim.g.vim_markdown_strikethrough = true
            vim.g.vim_markdown_autowrite = true
            vim.g.vim_markdown_toc_autofit = true
            vim.g.vim_markdown_folding_disabled = 1
            vim.g.vim_markdown_conceal = 0
        end,
    },
    obsidian,
}

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Helpful Shorter Aliases
local g = vim.g -- Global Variables
local o = vim.o -- Global Options
local bo = vim.bo -- Buffer Scoped Options
local wo = vim.wo -- Window Scoped Options
local fn = vim.fn -- Call Vim Functions

-- Enable Clipboard Sharing Between the System and Neovim
o.clipboard = 'unnamedplus'

-- Enable Working with Multiple Buffers
o.hidden = true

-- Enable Numbers
wo.number = true
o.number = true

-- Enable Relative Numbers
wo.relativenumber = true
o.relativenumber = true

-- Set Number of Spaces for Indentation Level (used for autoindent)
o.shiftwidth = 4
bo.shiftwidth = 4

-- Set Number of Spaces to Insert for a Tab (when editing)
o.softtabstop = 4
bo.softtabstop = 4

-- Enable Tabs to Spaces Conversion
o.expandtab = true
bo.expandtab = true

-- Disable Line Wrapping
wo.wrap = false
o.wrap = false

-- Set Linebreak
-- Disables Breaking Words in the Middle When Wrapping Lines
wo.linebreak = true

-- Highlight all Matches While Searching
o.incsearch = true
o.hlsearch = true

-- Ignore Case of Normal Letters When Searching Patterns
o.ignorecase = true

-- Override 'ignorecase' Option if Pattern Contains Only Upper or Lower Case
-- Letters
o.smartcase = true

-- Enable Swapfiles
o.swapfile = true
o.directory = fn.expand(fn.stdpath('data') .. '/swap//')

-- Enable Backups
o.backup = true
o.backupcopy = 'yes'
o.backupdir = fn.expand(fn.stdpath('data') .. '/backup//')

-- Enable Undofiles
o.undofile = true
o.undodir = fn.expand(fn.stdpath('data') .. '/undo//')

-- Create Directories if Missing
if fn.isdirectory(o.directory) == 0 then
    fn.mkdir(o.directory, 'p')
end
if fn.isdirectory(o.backupdir) == 0 then
    fn.mkdir(o.backupdir, 'p')
end
if fn.isdirectory(o.undodir) == 0 then
    fn.mkdir(o.undodir, 'p')
end

-- Enable Better Completion Experience
--
-- :help completeopt
-- menuone : Popup even when there's only one match.
-- noinsert: Do not insert text until a selection is made.
-- noselect: Do not select, force user to select one from the menu.
o.completeopt = 'menuone,noinsert,noselect'

-- Enable Visual Selection and Copying Without Line Numbers
o.mouse = 'a'

-- Enable the Signcolumn Always
-- o.signcolumn = 'yes'

-- Set new Horizontal Window Below the Current
o.splitbelow = true

-- Set new Vertical Window to the Right of the Current
o.splitright = true

-- Disable Showing Extra Messages When Using Completion
o.shortmess = o.shortmess .. 'c'

-- Enable File Info When Editing a File, Required by Nvim Metals
o.shortmess = o.shortmess:gsub('F', '')

-- Enable Enhanced Mode of Command Line Completion
o.wildmenu = true
o.wildmode = 'longest:full,full'

-- Set RipGrep as Grep Program
if fn.executable('rg') then
    o.grepprg = 'rg --vimgrep --no-heading --hidden --smart-case --no-ignore-vcs'
    o.grepformat = '%f:%l:%c:%m,%f:%l:%m'
end

-- Enhance Error Format With Filename
o.errorformat = o.errorformat .. ',%f'

-- Set Number of Lines Above and Below the Cursor While Scrolling
o.scrolloff = 3
o.sidescrolloff = 3

-- Enable Lazy Redraw
-- Disables Screen Redraw While Executing Commands
o.lazyredraw = true

-- Decrease Updatetime
-- Having longer updatetime (default is 4000ms = 4s) leads to noticeable delays
-- and poor user experience.
o.updatetime = 250

-- Highlight the Line of the Cursor
wo.cursorline = true

-- Enable 24-bit RGB TUI Colors
g.t_Co = 256
o.termguicolors = true

-- Disable Unused Builtin Plugins
g.loaded_2html_plugin = 1
g.loaded_gzip = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.loaded_logiPat = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1
g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_rrhelper = 1
g.loaded_spec = 1

-- Set Python3 Program
g.python3_host_prog = '/usr/bin/python3'

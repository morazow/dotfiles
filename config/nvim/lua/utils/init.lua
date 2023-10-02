local M = {}

local map = vim.keymap.set

function M.buffer_keymap(bufnr, mode, lhs, rhs, description)
    local options = { noremap = true, silent = true, buffer = bufnr, desc = description }
    map(mode, rhs, lhs, options)
end

return M

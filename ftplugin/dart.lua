local map = vim.api.nvim_set_keymap

local opts = {noremap = true, silent = true}
-- Format document
map('n', '<leader>a', ':FlutterOutlineToggle<CR>', opts)

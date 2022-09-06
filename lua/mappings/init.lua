local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = ' '
map('n', '<leader>ee', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>ef', ':NvimTreeFocus<CR>', opts)
map('n', '<leader>s',':PackerSync<CR>',opts)
map('n', '<leader>l', ':luafile %<CR>',opts)


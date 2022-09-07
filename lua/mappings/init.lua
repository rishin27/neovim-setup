local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = ' '
map('n', '<leader>ee', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>ef', ':NvimTreeFocus<CR>', opts)
map('n', '<leader>s',':PackerSync<CR>',opts)
map('n', '<leader>l', ':luafile %<CR>',opts)
map('n', '<leader>tf', ':Telescope find_files<CR>', opts)
map('n', '<leader>tl', ':Telescope live_grep<CR>', opts)
map('n', '<leader>tc', ':Telescope colorscheme<CR>', opts)
map('n', '<leader>tg', ':Telescope git_commits<CR>', opts)
map('n', '<leader>td', ':Telescope diagnostics<CR>', opts)

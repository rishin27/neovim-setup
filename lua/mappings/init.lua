local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = ' '
map('n', '<leader>ee', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>ef', ':NvimTreeFocus<CR>', opts)
map('n', '<leader>s',':PackerSync<CR>',opts)
map('n', '<leader>l', ':luafile %<CR>',opts)
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>cs', ':Telescope colorscheme<CR>', opts)
map('n', '<leader>git', ':Telescope git_commits<CR>', opts)

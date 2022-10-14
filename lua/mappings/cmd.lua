local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = ' '

-- cpp + cmake conv functions
map('n', '<leader>cc', ':!cmake -B build -G "Ninja" -DCMAKE_EXPORT_COMPILE_COMMANDS=1 && ln -s ./build/compile_commands.json .<CR>',opts)
map('n','<leader>cb',':!ninja -C build<CR>',opts)

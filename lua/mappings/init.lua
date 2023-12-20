local Util = require('utils')
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
--cmd mapping
require("mappings.cmd")
-- lightspeed mappings
require("telescope").load_extension("dir")

vim.keymap.set("n", "<Esc>", function()
  Util.close_floats()
  if vim.bo.modifiable then
    Util.clear_highlights()
  else
    if #vim.api.nvim_list_wins() > 1 then
      return vim.fn.feedkeys("<C-w>c")
    end
  end
end, { desc = "Close floats, clear highlights" })
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>a", ":AerialToggle<CR>", opts)
map("n", "<leader>s", ":PackerSync<CR>", opts)
map("v", "<leader>r", ":ToggleTermSendVisualLines<CR>", opts)
map("n", "<leader>p", ":Telescope find_files<CR>", opts)
map("n", "<leader>ld", ":Telescope dir live_grep<CR>", opts)
map("n", "<leader>lf", ":Telescope dir find_files<CR>", opts)
map("n", "<leader>co", ":Telescope colorscheme<CR>", opts)
map("n", "<leader>g", ":lua _lazygit_toggle()<CR>", opts)
map("n", "<C-t>", ":lua _zsh_toggle()<CR>", opts)
map("n", "<leader>d", ":Telescope diagnostics<CR>", opts)
map("n", "<leader>m", ":Telescope marks<CR>", opts)
map("n", "<S-Tab>", "<C-w><C-w>", opts)
map("i", "<C-l>", "<Esc>%%a", opts)
map("i", "<C-b>", "<C-o>caw",opts)
--ufo Mapping

map("n", "zO", ':lua require("ufo").openAllFolds()<CR>', opts)
map("n", "zC", ':lua require("ufo").closeAllFolds()<CR>', opts)
-- Move to previous/next
map("n", "<S-h>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<S-l>", "<Cmd>BufferNext<CR>", opts)

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

map("n", "<A-x>", "<Cmd>BufferClose<CR>", opts)
-- Debugger
map("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
map("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
map("n", "ds", ":lua require'dap'.step_into()<CR>", opts)
map("n", "de", ":lua require'dap'.step_over()<CR>", opts)
map("n", "df", ":lua require'dap'.step_out()<CR>", opts)
map("n", "dt", ":lua require'dap'.terminate()<CR>", opts)

-- DAP-UI
map("n", "<leader>c", ":lua require'dapui'.close()<CR>", opts)

--Move
--Down
map("v", "<A-j>", ":m '>+1<CR>", opts)
map("i", "<A-j>", ":m .+1<CR>", opts)
map("n", "<A-j>", ":m .+1<CR>", opts)
-- UP
map("v", "<A-k>", ":m '<-2<CR>", opts)
map("i", "<A-k>", ":m .-2<CR>", opts)
map("n", "<A-k>", ":m .-2<CR>", opts)

-- Terminal close Remap
-- map("t", "<S-Tab>", "<C-\\><C-n><C-w><C-w>", opts)
map("t", "<esc>", "<C-\\><C-n>", opts)

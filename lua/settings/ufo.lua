vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

require("ufo").setup({
	close_fold_kinds = { "imports", "comment", "region" },
	-- provider_selector = function(bufnr, filetype, buftype)
	--       return {'treesitter', 'indent'}
	--   end
})

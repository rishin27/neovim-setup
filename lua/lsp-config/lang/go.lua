local lsp_vars = require("lsp-config.lsp-vars")

require("go").setup({
	lsp_cfg = {
		on_attach = lsp_vars.on_attach,
		flags = lsp_vars.lsp_flags,
		capabilities = lsp_vars.capabilities,
	},
})

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require("go.format").goimport()
	end,
	group = format_sync_grp,
})

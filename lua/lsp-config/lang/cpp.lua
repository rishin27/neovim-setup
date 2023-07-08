local lsp_vars = require("lsp-config.lsp-vars")
local coq = require("coq")
require("lspconfig").clangd.setup(coq.lsp_ensure_capabilities({
	on_attach = lsp_vars.on_attach,
	flags = lsp_vars.lsp_flags,
}))

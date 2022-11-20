
local lsp_vars = require("lsp-config.lsp-vars")
require'lspconfig'.tsserver.setup{
    on_attach = lsp_vars.on_attach,
    flags = lsp_vars.lsp_flags,
    capabilities = lsp_vars.capabilities,

}

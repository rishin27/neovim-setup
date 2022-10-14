
local lsp_vars = require("lsp-config.lsp-vars")
local filetypes = { 'markdown', 'vimwiki' }
require'lspconfig'.marksman.setup{
    filetypes = filetypes,
    on_attach = lsp_vars.on_attach,
    flags = lsp_vars.lsp_flags,
    capabilities = lsp_vars.capabilities,
}


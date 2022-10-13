
local filetypes = { 'markdown', 'vimwiki' }
require'lspconfig'.marksman.setup{
    filetypes = filetypes,
    on_attach = on_attach
}


local rt = require("rust-tools")
local lsp_vars = require("lsp-config.lsp-vars")
-- local mason_registry = require('mason-registry')
-- local codelldb = mason_registry.get_package('codelldb')
-- local extension_path = codelldb:get_install_path() .."/extension/"
-- local codelldb_path = extension_path .. 'adapter/codelldb'
-- local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'



rt.setup({
  server = {
    -- on_attach = function(_, bufnr)
    --   -- Hover actions
    --   vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
    --   -- Code action groups
    --   vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
    -- end,
    on_attach = lsp_vars.on_attach,
    flags = lsp_vars.lsp_flags,
    capabilities = lsp_vars.capabilities,
  },
  -- dap = {
  --   adpater = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)
  -- },
})

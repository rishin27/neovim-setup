-- nvim-lsp variables
local lsp_vars = require("lsp-config.lsp-vars")
-- language server python env
local util = require('lspconfig/util')

local path = util.path


local function get_python_path(workspace)
  -- Use activated virtualenv.
  if vim.env.VIRTUAL_ENV then
    return path.join(vim.env.VIRTUAL_ENV, 'bin', 'python')
  end

  -- Find and use virtualenv in workspace directory.
  for _, pattern in ipairs({'*', '.*'}) do
    local match = vim.fn.glob(path.join(workspace, pattern, 'pyvenv.cfg'))
    if match ~= '' then
      return path.join(path.dirname(match), 'bin', 'python')
    end
  end
  -- Fallback to system Python.
  return exepath('python3') or exepath('python') or 'python'
end

require('lspconfig')['pyright'].setup{
    on_attach = lsp_vars.on_attach,
    flags = lsp_vars.lsp_flags,
    capabilities = lsp_vars.capabilities,
}

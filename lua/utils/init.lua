local Utils = {}
function Utils.close_floats()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative == "win" then
      vim.api.nvim_win_close(win, false)
    end
  end
end
function Utils.visible_buffers()
  return vim.tbl_map(vim.api.nvim_win_get_buf, vim.api.nvim_list_wins())
end
function Utils.lsp_active()
  for _, client in pairs(vim.lsp.get_active_clients()) do
    if client.server_capabilities then
      return true
    end
  end
  return false
end
function Utils.clear_highlights()
  vim.cmd("nohlsearch")
  if Utils.lsp_active() then
    vim.lsp.buf.clear_references()
    for _, buffer in pairs(Utils.visible_buffers()) do
      vim.lsp.util.buf_clear_references(buffer)
    end
  end
end
return Utils


local api = vim.api

local dart_format = function ()
  local buf = api.nvim_buf_get_name(0)
  local fmt = string.format("silent !dart format %s",buf) 
  local out
  api.nvim_exec(fmt,out)
  api.nvim_command('checktime')
end


local prettier_dart = api.nvim_create_augroup("Dart Prettier Group",{clear = true})
api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.dart",
  callback = dart_format,
  group= prettier_dart
})

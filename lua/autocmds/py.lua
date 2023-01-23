local api = vim.api

local black_isort = function ()
  local buf = api.nvim_buf_get_name(0)
  os.execute(string.format("black %s",buf))
  os.execute(string.format("isort %s",buf))
  api.nvim_command('checktime')
end


local prettier_py = api.nvim_create_augroup("Python Prettier Group",{clear = true})
api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.py",
  callback = black_isort,
  group= prettier_py
})

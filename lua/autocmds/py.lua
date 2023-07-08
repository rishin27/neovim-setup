local api = vim.api

local black_isort = function()
	local buf = api.nvim_buf_get_name(0)
	local black = string.format("silent !black %s", buf)
	local isort = string.format("silent !isort %s", buf)
	local out
	api.nvim_exec(black, out)
	api.nvim_exec(isort, out)
	api.nvim_command("checktime")
end

local prettier_py = api.nvim_create_augroup("Python Prettier Group", { clear = true })
api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.py",
	callback = black_isort,
	group = prettier_py,
})

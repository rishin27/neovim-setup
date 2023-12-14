
local api = vim.api

local rustfmt = function()
	local buf = api.nvim_buf_get_name(0)
	local rustfmt = string.format("silent !rustfmt %s", buf)
	local out
	api.nvim_exec(rustfmt, out)
	api.nvim_command("checktime")
end

local prettier_rs= api.nvim_create_augroup("Rust Pretier", { clear = true })
api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.rs",
	callback = rustfmt,
	group = prettier_rs,
})

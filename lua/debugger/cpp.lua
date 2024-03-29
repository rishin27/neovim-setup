local dap = require("dap")

dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = "OpenDebugAD7",
}

dap.adapters.codelldb = {
	type = "server",
	port = "${port}",
	executable = {
		-- CHANGE THIS to your path!
		command = "codelldb",
		args = { "--port", "${port}" },

		-- On windows you may have to uncomment this:
		-- detached = false,
	},
}
dap.configurations.cpp = {
	{
		name = "Default Debug",
		type = "cppdbg",
		request = "launch",
		program = "debug/debug",
		cwd = "${workspaceFolder}",
		miDebuggerPath = "/usr/bin/gdb",
		stopAtEntry = false
    ,
	},
	{
		name = "Debug a bin",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		miDebuggerPath = "/usr/bin/gdb",
		stopAtEntry = false
    ,
	},
	{
		name = "Attaching Audio Plugin Host",
		type = "codelldb",
		request = "attach",
		cwd = "${workspaceFolder}",
		pid = require("dap.utils").pick_process,
		stopOnEntry = false,
		args = {},
		-- miDebuggerPath = '/usr/bin/lldb',
	},
}

dap.configurations.c = dap.configurations.cpp

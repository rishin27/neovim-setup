require("dapui").setup()

local dapui = require("dapui")
local dap = require("dap")

-- Ui Settings
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close({})
end

REPL = function()
	dapui.float_element("repl", {
		height = 50,
		enter = true,
	})
end

-- python
require("debugger.python")

--- cpp
require("debugger.cpp")

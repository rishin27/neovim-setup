

local dap = require('dap')

dap.adapters.python = {
      type = 'executable';
      command = 'debugpy-adapter'
    }
dap.configurations.python = dap.configurations.python or {}
    table.insert(dap.configurations.python, {
    type = 'python',
    request = 'launch',
    name = 'launch with options',
    program = '${file}';
    pythonPath = function()
          return '/usr/bin/python'
    end,
    -- args = function()
    --     local args = {}
    --     local i = 1
    --     while true do
    --         local arg = vim.fn.input("Argument [" .. i .. "]: ")
    --         if arg == '' then
    --             break
    --         end
    --         args[i] = arg
    --         i = i + 1
    --     end
    --     return args
    -- end,
    justMyCode = function()
        return vim.fn.input('justMyCode? [y/n]: ') == 'y'
    end,
    stopOnEntry = function()
        return vim.fn.input('stopOnEntry? [y/n]: ') == 'y'
    end,
    -- console = 'integratedTerminal'
})
-- dap.configurations.python = {
--       {
--         type = 'python';
--         request = 'launch';
--         name = "Launch file";
--         program = "${file}";                               
--         pythonPath = function()
--           return '/usr/bin/python'
--         end;
--       },
--   }

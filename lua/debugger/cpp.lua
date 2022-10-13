
local dap = require('dap')


dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = 'OpenDebugAD7',
}

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = 'codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}
dap.configurations.cpp = {
  {
    name = "Launch file Linux",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    miDebuggerPath = '/usr/bin/gdb',
    stopAtEntry = true,
  },
  {
    name = "Attaching Audio Plugin Host",
    type = "codelldb",
    request = "attach",
    cwd = '${workspaceFolder}',
    pid = require('dap.utils').pick_process,
   -- miDebuggerPath = '/usr/bin/lldb',
  },
  {
    name = 'Launch Audio host',
    type = 'codelldb',
    request = 'launch',
    program = '/Users/apple/code/audio/JUCE/build/extras/AudioPluginHost/AudioPluginHost_artefacts/AudioPluginHost.app/Contents/MacOS/AudioPluginHost',
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}

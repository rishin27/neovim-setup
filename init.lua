-- Package Manager
require('packer-config')


--Settings for one of plugins
require('settings')
require('autocmds')
--Default Color Scheme
require('colorscheme-config.gruvbox')

--Mapping
require('mappings')

-- Debugger LSP stuff
require('nvim-tree-config')
require('lsp-config.cmp-config')
require('lsp-config')
require('debugger')


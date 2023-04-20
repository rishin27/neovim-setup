-- Package Manager
require('packer-config')


--Settings for one of plugins
require('settings')
require('settings.tree-sitter')
require('settings.term-config')
require('settings.comments')
require('settings.mason-config')
require('settings.vimwiki')
require('settings.aerial')
require('settings.autopairs')
require('autocmds')
require('settings.ufo')
--Default Color Scheme
require('colorscheme-config.gruvbox')

--Mapping
require('mappings')

-- Debugger LSP stuff
require('nvim-tree-config')
require('lsp-config')
require('lsp-config.cmp-config')
require('debugger')

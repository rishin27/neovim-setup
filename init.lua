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

--Default Color Scheme
require('colorscheme-config.catpuccin')

--Mapping
require('mappings')

-- Debugger LSP stuff
require('nvim-tree-config')
require('lsp-config.language-servers')
require('lsp-config.cmp-config')
require('debugger')

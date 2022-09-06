return require'packer'.startup(function()
    use 'wbthomason/packer.nvim' -- pakage manager
    use 'EdenEast/nightfox.nvim' --nightfox theme
    use 'folke/tokyonight.nvim' --toyonight theme
    use 'kyazdani42/nvim-web-devicons' --folder icons
    use 'kyazdani42/nvim-tree.lua' --folder view
    use 'neovim/nvim-lspconfig' --lsp 
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind.nvim'
    use 'nvim-lualine/lualine.nvim' --  lualine status bar
end)

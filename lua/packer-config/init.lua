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
    use 'akinsho/toggleterm.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}}}
    use 'romgrk/barbar.nvim'
    use 'airblade/vim-gitgutter'
    use 'nvim-treesitter/nvim-treesitter'
    use 'tpope/vim-obsession'
    use 'numToStr/Comment.nvim'
    use 'morhetz/gruvbox'
    use 'williamboman/mason.nvim'
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'vimwiki/vimwiki'
    use 'windwp/nvim-autopairs'
    use 'stevearc/aerial.nvim'
    use 'catppuccin/nvim'
    use 'ggandor/leap.nvim'
    use 'ms-jpq/coq_nvim'
    use 'mg979/vim-visual-multi'
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
    use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
}
    use "rafamadriz/friendly-snippets"
  end)


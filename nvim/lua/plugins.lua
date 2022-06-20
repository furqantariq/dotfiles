return require('packer').startup(function()
    
    -- Packer
    use 'wbthomason/packer.nvim'

    -- One Dark theme
    use 'furqantariq/onedark.nvim'

    -- Icons used by varuious plugins
    use 'kyazdani42/nvim-web-devicons' 
	
    -- Status line in botton of screen
    use { 'nvim-lualine/lualine.nvim', config = "require'plugin-configs.lualine'" }
	
    -- Git related
    use { 'lewis6991/gitsigns.nvim', config = "require'plugin-configs.gitsigns'" }
	
    -- File Explorer
    use { 'kyazdani42/nvim-tree.lua', config = "require'plugin-configs.nvimtree'" }
    
    -- File search and grep
    use { 'nvim-telescope/telescope.nvim', 
        requires = { {'nvim-lua/plenary.nvim'} }, config = "require'plugin-configs.telescope'" }

    -- Notifications alerts
    use { 'rcarriga/nvim-notify', config = "require'plugin-configs.notify'" }
    
    -- Tabs
    use { 'akinsho/bufferline.nvim', config = "require'plugin-configs.bufferline'" }

    -- Shopw info related to keymappings
	use { 'folke/which-key.nvim', config = "require'plugin-configs.whichkey'"}

    --  LSP stuff
    use { 'neovim/nvim-lspconfig', config = "require'lsp.lsp'" }
    
end)

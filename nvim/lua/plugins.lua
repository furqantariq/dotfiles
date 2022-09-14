return require('packer').startup(function()
    
    -- Packer
    use 'wbthomason/packer.nvim'

    -- One Dark theme
    use 'furqantariq/onedark.nvim'

    -- easymotion
    use 'ggandor/lightspeed.nvim'    

    -- Icons used by varuious plugins
    use 'kyazdani42/nvim-web-devicons' 
	
    -- Status line in botton of screen
    use { 'nvim-lualine/lualine.nvim', config = "require'plugin-configs.lualine'" }
	
    -- Git related
    use { 'lewis6991/gitsigns.nvim', config = "require'plugin-configs.gitsigns'" }
	
    -- File Explorer
    use { 'kyazdani42/nvim-tree.lua', config = "require'plugin-configs.nvimtree'" }
    
    -- Telescope plugin
    use { 'nvim-telescope/telescope.nvim', 
        requires = { {'nvim-lua/plenary.nvim'} }, config = "require'plugin-configs.telescope'" }

    -- Notifications alerts
    use { 'rcarriga/nvim-notify', config = "require'plugin-configs.notify'" }
    
    -- Tabs
    use { 'akinsho/bufferline.nvim', config = "require'plugin-configs.bufferline'" }

    -- Shopw info related to keymappings
	use { 'folke/which-key.nvim', config = "require'plugin-configs.whichkey'"}

    -- LSP stuff
	use { 'neovim/nvim-lspconfig', config = "require'lsp.lsp'" }
	
	-- Highlighting
--	use { 'nvim-treesitter/nvim-treesitter', config = "require'plugin-configs.treesitter'",
--        run = ':TSUpdate' }
	
	-- Autocompletion
	
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	use { 'hrsh7th/nvim-cmp', config = "require'plugin-configs.cmp'" }
	use 'onsails/lspkind.nvim'

end)

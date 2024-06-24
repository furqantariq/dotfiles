return {
    {
      "stevearc/conform.nvim",
      -- event = 'BufWritePre', -- uncomment for format on save
      config = function()
        require "configs.conform"
      end,
    },
  
    {
      "neovim/nvim-lspconfig",
      config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
      end,
    },
  
    {
          "williamboman/mason.nvim",
          opts = {
                  ensure_installed = {
                          "asm-lsp", "lua-language-server", "stylua", "pyright", "omnisharp", "neocmakelsp", "editorconfig-checker", "clangd"
                  },
          },
    },
  
    {
          "nvim-treesitter/nvim-treesitter",
          opts = {
                  ensure_installed = {
          "asm", "bash", "c", "c_sharp", "cmake", "comment", "cpp", "css", "csv", "go", "html", "json", "lua", "make", "nasm", "printf", "proto", "python", "regex", "scss", "sql", "strace", "typescript", "vim", "vimdoc", "xml", "yaml"
                  },
          },
    },
  
    {
       "stevearc/oil.nvim",
        lazy = false,
        config = function()
          require("oil").setup()
        end,
    },
  
  }
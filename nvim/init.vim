syntax on

set exrc

set relativenumber
set number

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set noswapfile
set nobackup

set nohlsearch
set hidden

set mouse=a
set noerrorbells

set incsearch
set scrolloff=8

set colorcolumn=120
set signcolumn=yes
set termguicolors
set fileencoding='utf-8'

lua require('plugins')
lua require('keymap')


lua vim.notify = require("notify")
colorscheme onedark

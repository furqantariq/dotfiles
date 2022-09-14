vim.g.mapleader=' '
local  map = vim.api.nvim_set_keymap

map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })

map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

map('v', '>', '>gv', { noremap = true, silent = false })
map('v', '<', '<gv', { noremap = true, silent = false })

map('n', '<leader>q', ':q<CR>', { noremap = true, silent = false })
map('n', '<leader>w', ':w<CR>', { noremap = true, silent = false })
map('n', '<leader>c', ':bdelete<CR>', { noremap = true, silent = false })

map('n', '<A-,>', ':bprevious<CR>', { noremap = true, silent = true })
map('n', '<A-.>', ':bnext<CR>', { noremap = true, silent = true })

map('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
map('n', '<leader>fr', ':Telescope live_references<CR>', { noremap = true, silent = true })

local k = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

k('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

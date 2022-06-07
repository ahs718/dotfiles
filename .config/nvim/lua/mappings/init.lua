local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Barbar mappings
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

map('n', '<leader>ps', ':PackerSync<CR>', opts)
-- Telescope mappings
map('n', '<leader>ff', ':Telescope find_files hidden=true<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep hidden=true<CR>', opts)
map('n', '<leader>fh', ':Telescope oldfiles hidden=true<CR>', opts)
map('n', '<leader>fr', ':Telescope frecency hidden=true<CR>', opts)

-- Toggleterm setting variables as commands
local Terminal  = require('toggleterm.terminal').Terminal
local htop = Terminal:new({ cmd = "htop", direction = "float", hidden = true })
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })
local python = Terminal:new({ cmd = "python", direction = "float", hidden = true })
local node = Terminal:new({ cmd = "node", direction = "float", hidden = true })

-- Toggleterm opening commands using the functions
function _HTOP_TOGGLE()
    htop:toggle()
end
function _LAZYGIT_TOGGLE()
    lazygit:toggle()
end
function _PYTHON_TOGGLE()
    python:toggle()
end
function _NODE_TOGGLE()
    node:toggle()
end

-- Toggleterm binding keys to activate functions
vim.api.nvim_set_keymap("n", "<leader>ht", "<cmd>lua _HTOP_TOGGLE()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>lua _PYTHON_TOGGLE()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tn", "<cmd>lua _NODE_TOGGLE()<CR>", {noremap = true, silent = true})

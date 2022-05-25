-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Packer Plugin Manager
    use 'kyazdani42/nvim-web-devicons' -- Web Dev Icons
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    }) -- Catppuccin Color Scheme
    use 'kyazdani42/nvim-tree.lua' -- Nvim Tree
    use 'neovim/nvim-lspconfig' -- LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind.nvim' -- Icons for Snippets
end)

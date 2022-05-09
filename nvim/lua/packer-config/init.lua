return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
end)

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use "wbthomason/packer.nvim" -- Packer Plugin Manager
    use "kyazdani42/nvim-web-devicons" -- Web Dev Icons
    use({ "catppuccin/nvim", as = "catppuccin" }) -- Catppuccin Color Scheme
    use "kyazdani42/nvim-tree.lua" -- Nvim Tree
    use "rcarriga/nvim-notify" -- Notifications
    use "nvim-lualine/lualine.nvim" -- Status bar
    use "romgrk/barbar.nvim"
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use "nvim-treesitter/nvim-treesitter-refactor"
    use {
        "nvim-telescope/telescope.nvim",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require"telescope".load_extension("frecency")
        end,
        requires = {"tami5/sqlite.lua"}
    }
    use "windwp/nvim-autopairs" -- Autpair brackets, quotes
    use "akinsho/toggleterm.nvim" -- Toggleterm

    use({
        "goolord/alpha-nvim",
        requires = {"kyazdani42/nvim-web-devicons"},
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
            local function footer()
                local total_plugins = #vim.tbl_keys(packer_plugins)
                local datetime = os.date(" %m-%d-%Y   %H:%M:%S")
                local version = vim.version()
                local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

                return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
            end

            local logo = {
                [[           █████                                                       ███                 ]],
                [[          ░░███                                                       ░░░                  ]],
                [[  ██████   ░███████    █████                   ████████   █████ █████ ████  █████████████  ]],
                [[ ░░░░░███  ░███░░███  ███░░      ██████████   ░░███░░███ ░░███ ░░███ ░░███ ░░███░░███░░███ ]],
                [[  ███████  ░███ ░███ ░░█████    ░░░░░░░░░░     ░███ ░███  ░███  ░███  ░███  ░███ ░███ ░███ ]],
                [[ ███░░███  ░███ ░███  ░░░░███                  ░███ ░███  ░░███ ███   ░███  ░███ ░███ ░███ ]],
                [[░░████████ ████ █████ ██████                   ████ █████  ░░█████    █████ █████░███ █████]],
                [[ ░░░░░░░░ ░░░░ ░░░░░ ░░░░░░                   ░░░░ ░░░░░    ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ ]],
            }

            dashboard.section.header.val = logo

            dashboard.section.buttons.val = {
                dashboard.button("<SPC>ff", "  Find File"),
                dashboard.button("<SPC>fr", "  Find Recent"),
                dashboard.button("<SPC>fg", "  Find Word"),
                dashboard.button("<SPC>ps", "  Update plugins"),
                dashboard.button("q", "  Quit", ":qa<cr>")
            }

            dashboard.section.footer.val = footer()
            dashboard.section.footer.opts.hl = "Constant"

            alpha.setup(dashboard.opts)

            vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
        end
        }
    )
    -- LSP plugins
    use "neovim/nvim-lspconfig" -- LSP
    use "williamboman/nvim-lsp-installer" -- LSP installer
    use "hrsh7th/nvim-cmp" -- Autocompletion plugin
    use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp
    use "saadparwaiz1/cmp_luasnip" -- Snippets source for nvim-cmp
    use "L3MON4D3/LuaSnip" -- Snippets plugin
    use "onsails/lspkind.nvim" -- Icons for Snippets
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)

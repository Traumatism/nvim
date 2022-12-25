local plugins = {
    -- formatting
    "lukas-reineke/lsp-format.nvim",
    -- LSP symbols
    "onsails/lspkind.nvim",
    -- Cuter theme
    "catppuccin/nvim",
    -- Completions engine
    "hrsh7th/nvim-cmp",
    -- Path completions
    "hrsh7th/cmp-path",
    -- Jump through file
    "phaazon/hop.nvim",
    -- Evaluate maths
    "hrsh7th/cmp-calc",
    -- Snippets
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    -- Buffer (words) completions
    "hrsh7th/cmp-buffer",
    -- Jump between buffers
    "romgrk/barbar.nvim",
    -- Command completions
    "hrsh7th/cmp-cmdline",
    -- File explorer
    "lambdalisue/fern.vim",
    -- LSP completions
    "hrsh7th/cmp-nvim-lsp",
    -- Telescope dep
    "nvim-lua/plenary.nvim",
    -- {[()]}
    "windwp/nvim-autopairs",
    -- Manage LSP
    "neovim/nvim-lspconfig",
    -- Let everyone know you are using the best code editor
    "andweeb/presence.nvim",
    -- Cool icons
    "nvim-tree/nvim-web-devicons",
    -- Cool actions
    "nvim-telescope/telescope.nvim",
    -- Cool icons bis
    "lambdalisue/glyph-palette.vim",
    -- dep
    "antoinemadec/FixCursorHold.nvim",
    -- Better syntax highlighting
    "nvim-treesitter/nvim-treesitter",
    -- Icons in file explorer
    "TheLeoP/fern-renderer-web-devicons.nvim",
}

vim.call("plug#begin", "~/.config/nvim/plugged")

for idx = 1, #plugins do
    vim.fn["plug#"](plugins[idx])
end

vim.call("plug#end")

require("configs.autopairs")
require("configs.catppuccin")
require("configs.cmp")
require("configs.devicons")
require("configs.hop")
require("configs.presence")

local plugins = {
    "onsails/lspkind.nvim",
    "lervag/vimtex",
    "catppuccin/nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-path",
    "phaazon/hop.nvim",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",	
    "hrsh7th/cmp-buffer",
    "romgrk/barbar.nvim",
    "cocopon/iceberg.vim",
    "sts10/vim-pink-moon",
    "hrsh7th/cmp-cmdline",
    "lambdalisue/fern.vim",
    "hrsh7th/cmp-nvim-lsp",
    "nvim-lua/plenary.nvim",
    "windwp/nvim-autopairs",
    "nikolvs/vim-sunbather",
    "neovim/nvim-lspconfig",
    "numToStr/Comment.nvim",
    "andweeb/presence.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope.nvim",
    "lambdalisue/glyph-palette.vim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "TheLeoP/fern-renderer-web-devicons.nvim",
}

vim.call("plug#begin", "~/.config/nvim/plugged")

for idx = 1, #plugins do
    vim.fn["plug#"](plugins[idx])
end

vim.call("plug#end")

require("configs.lspkind")
require("configs.autopairs")
require("configs.catppuccin")
require("configs.cmp")
require("configs.comment")
require("configs.devicons")
require("configs.hop")
require("configs.presence")

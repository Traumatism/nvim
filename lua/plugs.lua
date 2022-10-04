
local plugins = {
    "goolord/alpha-nvim",    
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "lambdalisue/fern.vim",
    "catppuccin/nvim",
	"feline-nvim/feline.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",	
    "kyazdani42/nvim-web-devicons",
    "romgrk/barbar.nvim",
    "phaazon/hop.nvim",
}

vim.call("plug#begin", "~/.config/nvim/plugged")

for idx = 1, #plugins do
    vim.fn["plug#"](plugins[idx])
end

vim.call("plug#end")

-- single configurations

require("configs.alpha")
require("configs.cmp")
require("configs.feline")
require("configs.catppuccin")

require("hop").setup()
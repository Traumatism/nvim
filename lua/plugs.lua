
local plugins = {
    "yamatsum/nvim-cursorline",
    "karb94/neoscroll.nvim",
    "goolord/alpha-nvim",    
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "lambdalisue/fern.vim",
    "catppuccin/nvim",
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
    "andweeb/presence.nvim",
}

vim.call("plug#begin", "~/.config/nvim/plugged")

for idx = 1, #plugins do
    vim.fn["plug#"](plugins[idx])
end

vim.call("plug#end")

-- single configurations

require("configs.alpha")
require("configs.cmp")
require("configs.catppuccin")

require("nvim-cursorline").setup({
  cursorword = { enable = true, min_length = 0, hl = { underline = false, bold = true } }
})

require("presence"):setup()

require("hop").setup()
require("neoscroll").setup()

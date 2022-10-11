local plugins = {
    "yamatsum/nvim-cursorline", -- highlight word/line under cursor
    "karb94/neoscroll.nvim", -- smooth scrolling
    "goolord/alpha-nvim", -- chad start-up menu 
    "nvim-treesitter/nvim-treesitter", -- syntax highlighting
    "nvim-telescope/telescope.nvim", -- observe the project's galaxy
    "nvim-lua/plenary.nvim", -- dependency for Telescope
    "antoinemadec/FixCursorHold.nvim", -- dependency for Fern
    "lambdalisue/fern.vim", -- file explorer
    "catppuccin/nvim", -- cute UwU theme
    "neovim/nvim-lspconfig", -- super fast coding
    
    -- BLAZINGLY fast coding !!!
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",	

    "kyazdani42/nvim-web-devicons", -- nerdy icons
    "romgrk/barbar.nvim", -- tab bar
    "phaazon/hop.nvim", -- walk thru code just like a little bunny
    "andweeb/presence.nvim", -- let everyone know u are using the BEST code editor ever!
}

vim.call("plug#begin", "~/.config/nvim/plugged")

for idx = 1, #plugins do
    vim.fn["plug#"](plugins[idx])
end

vim.call("plug#end")

require("configs.alpha")
require("configs.cmp")
require("configs.catppuccin")

require("nvim-cursorline").setup({
  cursorword = { enable = true, min_length = 0, hl = { underline = false, bold = true } }
})

require("presence"):setup()
require("hop").setup()
require("neoscroll").setup()


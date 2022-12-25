local g = vim.g
local opt = vim.opt

g["fern#renderer"] = "nvim-web-devicons"

g.mapleader = " "
g.neovide_refresh_rate = 65
g.catppuccin_flavour = "frappe"
g.neovide_cursor_vfx_mode = "railgun"
g.neovide_scroll_animation_length = 0.5
g.neovide_cursor_animation_length = 0.03

opt.rnu = true
opt.tabstop = 4
opt.guicursor = ""
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.termguicolors = true
opt.wildignorecase = true
opt.guifont = "Iosevka Nerd Font"

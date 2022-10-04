local map = vim.api.nvim_set_keymap

map("n", "<Space>", "", {})
map("n", "<leader>e", ":Fern . -drawer -toggle<cr>", { noremap = true })
map("n", "<leader>hw", ":HopWord<cr>", { noremap = true })
map("n", "<leader>tff", ":Telescope find_files<cr>", { noremap = true })
map("n", "<leader>tlg", ":Telescope live_grep<cr>", { noremap = true })

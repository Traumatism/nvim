local map = vim.api.nvim_set_keymap

map("n", "<Space>", "", {})
map("n", "<leader>n", ":BufferPick<cr>", { noremap = true })
map("n", "<leader><leader>", ":Telescope<cr>", { noremap = true })
map("n", "<leader>e", ":Fern . -drawer -toggle<cr>", { noremap = true })
map("n", "<leader>h", ":HopWord<cr>", { noremap = true })
map("n", "<leader>tff", ":Telescope find_files<cr>", { noremap = true })
map("n", "<leader>tlg", ":Telescope live_grep<cr>", { noremap = true })

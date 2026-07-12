local map = vim.keymap.set

-------------------------------------------------
-- Terminal
-------------------------------------------------
map("n", "<leader>tt", function()
    vim.cmd("terminal")
    vim.cmd("startinsert")
end, { desc = "Terminal" })

map("n", "<leader>th", function()
    vim.cmd("split | terminal")
    vim.cmd("startinsert")
end, { desc = "Horizontal Terminal" })

map("n", "<leader>tv", function()
    vim.cmd("vsplit | terminal")
    vim.cmd("startinsert")
end, { desc = "Vertical Terminal" })

map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
map("t", "<leader>tc", "<C-\\><C-n><cmd>bd!<CR>", {
    desc = "Close terminal"
})

-------------------------------------------------
-- Telescope
-------------------------------------------------

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Recent Files" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help" })

map("n", "<leader>fc", "<cmd>Telescope commands<CR>", { desc = "Commands" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Keymaps" })
map("n", "<leader>fs", "<cmd>Telescope grep_string<CR>", { desc = "Grep Word" })
map("n", "<leader>fo", "<cmd>Telescope vim_options<CR>", { desc = "Vim Options" })
map("n", "<leader>fR", "<cmd>Telescope registers<CR>", { desc = "Registers" })
map("n", "<leader>fC", "<cmd>Telescope colorscheme<CR>", { desc = "Colorscheme" })

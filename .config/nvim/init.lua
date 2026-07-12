require("config.lazy")
require("config.keymaps")
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "python", "lua"},
    callback = function()
        vim.treesitter.start()
    end,
})
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

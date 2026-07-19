vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
require("config.keymaps")
require("config.options")

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "bash",
        "c",
        "cpp",
        "cmake",
        "lua",
        "python",
    },
    callback = function()
        vim.treesitter.start()
    end,
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


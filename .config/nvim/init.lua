vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.options")
require("config.lazy")
require("config.keymaps")
require("config.filetypes")
require("config.autocmds")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

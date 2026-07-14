local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.termguicolors = true
-- opt.colorcolumn = "100"
opt.laststatus = 3
opt.showmode = false

-- Tabs / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Files
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Mouse
opt.mouse = "a"

-- Clipboard
opt.clipboard = "unnamedplus"

-- Performance
opt.updatetime = 250
--opt.timeoutlen = 300

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 15

-- Whitespace
opt.list = true
opt.listchars = {
    tab = "» ",
    trail = "·",
    nbsp = "␣",
}

-- Misc
opt.confirm = true
opt.hidden = true
opt.cmdheight = 1

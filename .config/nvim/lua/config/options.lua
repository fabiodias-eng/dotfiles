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
opt.laststatus = 3
opt.showmode = false

-- Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = false

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
opt.splitkeep = "screen"

-- Mouse / clipboard
opt.mouse = "a"
opt.clipboard = "unnamedplus"

-- Performance
opt.updatetime = 250
opt.timeoutlen = 700

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 15

-- Whitespace
opt.list = true
opt.listchars = {
	tab = " ",
	trail = "·",
	nbsp = "␣",
	extends = "›",
	precedes = "‹",
}

-- Misc
opt.confirm = true
opt.hidden = true
opt.cmdheight = 1

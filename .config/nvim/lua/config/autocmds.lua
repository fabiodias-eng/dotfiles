vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.schedule(function()
			vim.opt.cmdheight = 0
			vim.cmd("redraw!")
		end)
	end,
})

vim.api.nvim_create_autocmd("CmdlineEnter", {
	callback = function()
		vim.opt.cmdheight = 1
	end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
	callback = function()
		vim.opt.cmdheight = 0
	end,
})

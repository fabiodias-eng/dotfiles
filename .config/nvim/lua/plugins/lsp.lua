return {
	-- LSPCONFIG
	{
		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			local servers = {
				"bashls",
				"clangd",
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"dockerls",
				"yamlls",
				"jsonls",
				"gdscript",
			}

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server)
			end
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local map = vim.keymap.set
					local opts = {
						buffer = args.buf,
						silent = true,
					}
					local opts = {
						buffer = args.buf,
						silent = true,
					}

					-- Hover
					map(
						"n",
						"K",
						"<cmd>Lspsaga hover_doc<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Hover Documentation",
						})
					)

					-- Navigation
					map(
						"n",
						"gd",
						"<cmd>Lspsaga goto_definition<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Goto Definition",
						})
					)

					map(
						"n",
						"gD",
						vim.lsp.buf.declaration,
						vim.tbl_extend("force", opts, {
							desc = "Goto Declaration",
						})
					)

					map(
						"n",
						"gi",
						vim.lsp.buf.implementation,
						vim.tbl_extend("force", opts, {
							desc = "Goto Implementation",
						})
					)

					map(
						"n",
						"gr",
						"<cmd>Lspsaga finder<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Finder / References",
						})
					)

					map(
						"n",
						"gt",
						vim.lsp.buf.type_definition,
						vim.tbl_extend("force", opts, {
							desc = "Type Definition",
						})
					)

					-- Actions
					map(
						"n",
						"<leader>ca",
						"<cmd>Lspsaga code_action<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Code Action",
						})
					)

					map(
						"n",
						"<leader>rn",
						"<cmd>Lspsaga rename<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Rename Symbol",
						})
					)

					-- Diagnostics
					map(
						"n",
						"[d",
						"<cmd>Lspsaga diagnostic_jump_prev<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Previous Diagnostic",
						})
					)

					map(
						"n",
						"]d",
						"<cmd>Lspsaga diagnostic_jump_next<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Next Diagnostic",
						})
					)

					map(
						"n",
						"<leader>e",
						"<cmd>Lspsaga show_line_diagnostics<CR>",
						vim.tbl_extend("force", opts, {
							desc = "Line Diagnostics",
						})
					)

					map(
						"n",
						"<leader>q",
						vim.diagnostic.setloclist,
						vim.tbl_extend("force", opts, {
							desc = "Diagnostics List",
						})
					)
				end,
			})
		end,
	},
	-- LSPSAGA
	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			ui = {
				border = "rounded",
			},
		},
	},
}

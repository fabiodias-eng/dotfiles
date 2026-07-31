return {
	-- MASON
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	-- MASON TOOL INSTALLER
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		dependencies = {
			"mason-org/mason.nvim",
		},

		opts = {
			ensure_installed = {
				-- LSP
				"bash-language-server",
				"clangd",
				"lua-language-server",
				"pyright",
				"rust-analyzer",
				"dockerfile-language-server",
				"yaml-language-server",
				"json-lsp",

				-- DAP
				"codelldb",
				"debugpy",
				"bash-debug-adapter",

				-- Formatters
				"clang-format",
				"ruff",
				"shfmt",
				"stylua",
				"yamlfmt",
				"prettier",
				"gdtoolkit",

				-- Linters
				"cpplint",
				"ruff",
				"shellcheck",
				"luacheck",
				"yamllint",
				"jsonlint",
				"hadolint",
			},
		},
	},
}

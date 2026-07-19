return {
	{
  		'nvim-treesitter/nvim-treesitter',
  		lazy = false,
  		build = ':TSUpdate',

        opts = {
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "cmake",
                "diff",
                "dockerfile",
                "git_config",
                "git_rebase",
                "gitcommit",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "toml",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            },

            auto_install = true,

            highlight = {
                enable = true,
            },
        },
    },
}

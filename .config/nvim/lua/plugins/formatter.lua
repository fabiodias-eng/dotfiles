return {
    {
        "stevearc/conform.nvim",

        opts = {
            formatters_by_ft = {
                c = { "clang_format" },
                cpp = { "clang_format" },
                python = { "ruff_format" },
                sh = { "shfmt" },
                bash = { "shfmt" },
                lua = { "stylua" },
                yaml = { "yamlfmt" },
                json = { "prettier" },
                dockerfile = { "prettier" },
                gdscript = { "gdformat" },
            },

            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        },
    },
}

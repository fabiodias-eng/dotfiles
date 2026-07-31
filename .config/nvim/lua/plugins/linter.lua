return {
    {
        "mfussenegger/nvim-lint",

        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                c = { "cpplint" },
                cpp = { "cpplint" },
                python = { "ruff" },
                sh = { "shellcheck" },
                bash = { "shellcheck" },
                lua = { "luacheck" },
                yaml = { "yamllint" },
                json = { "jsonlint" },
                dockerfile = { "hadolint" },
                gdscript = { "gdlint" },
            }

            vim.api.nvim_create_autocmd(
                { "BufEnter", "BufWritePost", "InsertLeave" },
                {
                    callback = function()
                        lint.try_lint()
                    end,
                }
            )
        end,
    },
}

return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",

        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },

        config = function()
            require("telescope").setup({
                pickers = {
                    buffers = {
                        initial_mode = "normal",
                    },
                },
            })

            pcall(require("telescope").load_extension, "fzf")
        end,
    },
}

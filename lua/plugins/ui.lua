return {
    --Start Screen
    {
        "mhinz/vim-startify",
        lazy = false,
    },
    -- Theme
    {
        "EdenEast/nightfox.nvim",
        config = function()
            vim.cmd.colorscheme("carbonfox")
        end
    },

    -- Lualine
    {
        "nvim-lualine/lualine.nvim",
        config = true
    },

    -- Indent Blankline
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = "│" },
            scope = { enabled = true },
        }
    },

    -- Tabline
    {
        "kdheepak/tabline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("tabline").setup({
                show_filename_only = true,
                show_close_icon = true,
                modified_icon = "[+]",
                separator = "▏",
            })
        end
    }
}

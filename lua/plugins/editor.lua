return {
    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = { file_ignore_patterns = { "node_modules", ".git" } }
            })
        end
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "typescript", "markdown", "tsx" },
            highlight = { enable = true },
            indent = { enable = true },
        },

        -- Drizzle ORM `sql<type>` syntax breaks standard TypeScript highlighting.
        -- Force .ts files to use the TSX parser to resolve generic + template literal issues.
        -- Uncomment the config block below if you need this:
        --------------------------------------------------------------------------------------

        -- config = function(_, opts)
        --     require("nvim-treesitter.configs").setup(opts)
        --     vim.treesitter.language.register("tsx", "typescript")
        -- end,
    },

    -- Gitsigns
    {
        "lewis6991/gitsigns.nvim",
        config = true
    }
}

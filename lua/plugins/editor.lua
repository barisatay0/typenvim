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
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "typescript", "markdown" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  
  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    config = true -- require('gitsigns').setup() otomatik calisir
  }
}

-- Key map settings
--
-- [Space] -> Git & Rare actions (Leader)
-- [\]     -> Testing (Fast access above Enter key)
-- [g]     -> Go / LSP actions
-- [C]     -> Control (Search & Navigation)
-- [[]]    -> Jump (Diagnostics)
--

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-------------------------------------------------------------------------------
-- 1. LSP & Diagnostics (Vim Native / 'g' keys)
-------------------------------------------------------------------------------

-- K: Hover documentation
keymap("n", "K", vim.lsp.buf.hover, opts)

-- gd: Go Definition
keymap("n", "gd", vim.lsp.buf.definition, opts)

-- gr: Go References (Telescope Native Lua Call)
keymap("n", "gr", function() require("telescope.builtin").lsp_references() end, opts)

-- gl: Go Line Diagnostic
keymap("n", "gl", vim.diagnostic.open_float, opts)

-- [d: Previous Diagnostic
keymap("n", "[d", vim.diagnostic.goto_prev, opts)

-- ]d: Next Diagnostic
keymap("n", "]d", vim.diagnostic.goto_next, opts)

-- <C-Space>: Manually trigger completion (Fixed typo <ft> -> <C-Space>)
keymap("i", "<C-Space>", function() require("cmp").complete() end, opts)


-------------------------------------------------------------------------------
-- 2. Telescope / File Navigation
-------------------------------------------------------------------------------

-- <C-p>: Find files
keymap('n', '<C-p>', function() require("telescope.builtin").find_files() end, opts)

-- <C-g>: Live Grep
keymap('n', '<C-g>', function() require("telescope.builtin").live_grep() end, opts)

-- <C-b>: Find Buffers
keymap('n', '<C-b>', function() require("telescope.builtin").buffers() end, opts)


-------------------------------------------------------------------------------
-- 3. Testing (Neotest)
-------------------------------------------------------------------------------

-- tr: Run nearest test
keymap("n", "tr", function() require("neotest").run.run() end, opts)

-- tf: Run entire file
keymap("n", "tf", function() require("neotest").run.run(vim.fn.expand("%")) end, opts)

-- to: Toggle Output panel
keymap("n", "to", function() require("neotest").output.open({ enter = true }) end, opts)

-- ts: Toggle Summary panel (Fixes the nil value error)
keymap("n", "ts", function() require("neotest").summary.toggle() end, opts)


-------------------------------------------------------------------------------
-- 4. Git & Other Commands
-------------------------------------------------------------------------------

-- <space>gb: Git Branches
keymap('n', '<leader>gb', function() require("telescope.builtin").git_branches() end, opts)

-- <space>gc: Git Commits
keymap('n', '<leader>gc', function() require("telescope.builtin").git_commits() end, opts)

-- <space>fh: Find Help
keymap('n', '<leader>fh', function() require("telescope.builtin").help_tags() end, opts)

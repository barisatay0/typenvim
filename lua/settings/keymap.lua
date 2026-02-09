-- Key map settings
--
-- Philosophy: "No-Leader" workflow. No Alt keys.
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

-- K: Hover documentation (Standard Vim)
keymap("n", "K", vim.lsp.buf.hover, opts)

-- gd: Go Definition
keymap("n", "gd", vim.lsp.buf.definition, opts)

-- gr: Go References (Telescope)
keymap("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)

-- gl: Go Line Diagnostic (Show error window)
keymap("n", "gl", vim.diagnostic.open_float, opts)

-- [d: Previous Diagnostic
keymap("n", "[d", vim.diagnostic.goto_prev, opts)

-- ]d: Next Diagnostic
keymap("n", "]d", vim.diagnostic.goto_next, opts)

-- <C-Space>: Manually trigger completion
keymap("i", "<ft>", function() require("cmp").complete() end, opts)


-------------------------------------------------------------------------------
-- 2. Telescope / File Navigation
-------------------------------------------------------------------------------

-- <C-p>: Find files
keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)

-- <C-g>: Live Grep (Search text)
keymap('n', '<C-g>', '<cmd>Telescope live_grep<cr>', opts)

-- <C-b>: Find Buffers
keymap('n', '<C-b>', '<cmd>Telescope buffers<cr>', opts)


-------------------------------------------------------------------------------
-- 3. Testing (Neotest)
-------------------------------------------------------------------------------

-- tr: Run nearest test
keymap("n", "tr", "<cmd>lua require('neotest').run.run()<cr>", opts)

-- tf: Run entire file
keymap("n", "tf", "<cmd>lua require('neotest').run.run({ vim.fn.expand('%') })<cr>", opts)

-- to: Toggle Output panel
keymap("n", "to", "<cmd>lua require(\"neotest\").output.open({ enter = true })<cr>", opts)

-- ts: Toggle Summary panel
keymap("n", "ts", "<cmd>Neotest summary<cr>", opts)


-------------------------------------------------------------------------------
-- 4. Git & Other Commands (Leader / Space)
-------------------------------------------------------------------------------

-- <space>gb: Git Branches
keymap('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', opts)

-- <space>gc: Git Commits
keymap('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', opts)

-- <space>fh: Find Help
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

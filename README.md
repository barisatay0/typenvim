# TypeNvim

A highly optimized, modular Neovim configuration built for speed and muscle memory.
* **Tests:** Mapped directly to `t` prefix (overriding standard 'till' motion).
* **Search:** Mapped to `Ctrl` keys.
* **LSP:** Mapped to native `g` and `[` keys.
* **Git/Misc:** Uses the Leader.

![Neovim](https://img.shields.io/badge/Neovim-v0.9+-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-Config-blue?style=for-the-badge&logo=lua&logoColor=white)

## 📋 Prerequisites

Ensure you have the following installed on your system:

* **Neovim** (>= 0.9.0)
* **Git**
* **C Compiler (gcc/clang)** (Required for Treesitter parsers)
* **Ripgrep** (Required for Telescope `live_grep`)
* **Node.js & npm** (Required for Mason/LSP servers)
* **Nerd Font** (Required for icons)

## 🛠️ Installation

1.  **Backup your existing config:**
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    ```

2.  **Clone this repository:**
    ```bash
    git clone git@github.com:barisatay0/typenvim.git ~/.config/nvim
    ```

3.  **Start Neovim:**
    ```bash
    nvim
    ```
    *Lazy.nvim will automatically bootstrap and install all plugins on the first launch.*

## ⌨️ Keymaps (Cheat Sheet)

### 🧪 Testing (Direct `t` Prefix)
*Fastest possible access. Overrides standard `t` (till) motion.*

| Key | Action | Description |
| :--- | :--- | :--- |
| `tr` | **Run Nearest** | Run the test under cursor |
| `tf` | **Run File** | Run all tests in current file |
| `to` | **Output** | Open test output panel |
| `ts` | **Summary** | Toggle test summary sidebar |

### 🚀 Navigation & Search (Control Keys)
*Fast access without mode switching.*

| Key | Action | Description |
| :--- | :--- | :--- |
| `<C-p>` | **Find Files** | Fuzzy find files (Telescope) |
| `<C-g>` | **Live Grep** | Search text across project |
| `<C-b>` | **Buffers** | Switch open buffers |

### 🧠 LSP & Code Intelligence (Native Style)
*Uses Vim's native `g` and `[` keys.*

| Key | Action | Description |
| :--- | :--- | :--- |
| `K` | **Hover** | Show documentation under cursor |
| `gd` | **Go Definition** | Jump to definition |
| `gr` | **Go References** | Find references (Telescope) |
| `gl` | **Line Diagnostic** | Show error/warning window |
| `[d` | **Prev Diagnostic** | Jump to previous error |
| `]d` | **Next Diagnostic** | Jump to next error |
| `<C-Space>`| **Completion** | Trigger auto-completion manually |

### 🌳 Git & Misc
*Uses the Leader.*

| Key | Action | Description |
| :--- | :--- | :--- |
| `\gb` | **Git Branches** | Switch git branches |
| `\gc` | **Git Commits** | Browse commit history |
| `\fh` | **Find Help** | Search help tags |

## 📦 Plugin Structure

The configuration follows a modern `lazy.nvim` spec structure:

```text
lua/
├── config/
│   ├── keymaps.lua    # Custom keybindings
│   ├── options.lua    # vim.opt settings
│   └── lazy.lua       # Plugin manager bootstrap
└── plugins/
    ├── lsp.lua        # Mason, LSPConfig, CMP, Conform
    ├── editor.lua     # Telescope, Treesitter, Gitsigns
    ├── ui.lua         # Colorscheme, Lualine, IndentBlankline
    └── test.lua       # Neotest & Adapters
```

### 🐛 Troubleshooting

If you encounter issues with Treesitter or LSP :

* Update Plugins: :Lazy update
* Update Parsers: :TSUpdate
* Check Health: :checkhealth

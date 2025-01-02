# Vanilla Vim Configuration with Plugins

This is a basic Vim configuration file designed for modern usage. It includes features such as file navigation, auto-completion, syntax highlighting, and a floating terminal. Although it works well, it's recommended to use a Neovim distribution for better features and performance.

## Features

1. **Modern Vim Features**:
   - Line numbering
   - Auto-indentation
   - Spaces instead of tabs
   - Cursorline highlighting
   - System clipboard support
   - Mouse support

2. **Plugins** (managed with [vim-plug](https://github.com/junegunn/vim-plug)):
   - Floating terminal: `vim-floaterm`
   - File navigation: `NERDTree`
   - Fuzzy file search: `fzf` and `fzf.vim`
   - File icons: `vim-devicons`
   - Auto-completion: `coc.nvim`
   - Linting: `ale`
   - Syntax highlighting and indentation: `nvim-treesitter` and `vim-python-pep8-indent`
   - Virtual environment support: `vim-virtualenv`
   - Code formatting: `black`

## Installation

### Prerequisites
- Install [Vim 8+](https://www.vim.org/) or [Neovim](https://neovim.io/).
- Install [vim-plug](https://github.com/junegunn/vim-plug):
  ```bash
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

### Steps
1. Copy the configuration file content into your `~/.vimrc` file.
2. Open Vim and run the following command to install plugins:
   ```vim
   :PlugInstall
   ```

3. Ensure you have the following tools installed for specific plugins:
   - `fzf` binary: Install via Scoop or Chocolatey on Windows.
     ```bash
     scoop install fzf
     ```
   - `ripgrep` for better `fzf` performance (optional).
   - Python 3 and `pip` for `coc.nvim` and `black`.

## Key Mappings

### General
- `Ctrl + T`: Toggle the floating terminal.
- `Ctrl + N`: Toggle the NERDTree file explorer.

### Fuzzy Finder (fzf)
- `Ctrl + F`: Open file search.
- `Leader + B`: Open buffer list.
- `Leader + R`: Search text using ripgrep.

### Code Completion (coc.nvim)
- `Tab`: Navigate completion menu forward.
- `Shift + Tab`: Navigate completion menu backward.
- `Enter`: Confirm completion.

## Plugin Configuration

### vim-floaterm
- **Keymap**: Toggle terminal with `Ctrl + T`
- **Appearance**: Terminal opens at 80% width and height.
- **Title**: Terminal windows are labeled `Terminal`.

### fzf
- Open file search using `Ctrl + F`.
- Layout: Opens in a split window covering ~40% of the screen.
- Uses `ripgrep` if available for faster searches.

### NERDTree
- Toggle file explorer using `Ctrl + N`.

## Customization
You can easily modify this configuration by:
- Changing keybindings in the `nnoremap` and `inoremap` sections.
- Adding or removing plugins within the `call plug#begin()` block.

## Colorscheme
- Default colorscheme: `slate`. You can change it to any other installed theme.

## Additional Notes
- For Python development, ensure you have `black` and `vim-python-pep8-indent` configured.
- Use `nvim-treesitter` for modern syntax highlighting. Run `:TSUpdate` after installation to ensure it works correctly.

## Troubleshooting

### FZF Binary Not Found
If you see an error like `fzf-lua: fzf is not an executable command`:
1. Install `fzf` using Scoop or Chocolatey.
2. Add the `fzf` binary to your PATH if installed manually.
3. Verify by running `fzf --version` in your terminal.

### coc.nvim Not Working
Ensure Node.js is installed on your system:
```bash
node --version
```
Install Node.js if not present.

---

Enjoy a modern Vim experience with this configuration!

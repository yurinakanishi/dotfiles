-- Enable line numbers
vim.wo.number = true

-- Enable relative line numbers
vim.wo.relativenumber = true

-- Enable confirmation dialogs
vim.o.confirm = true

-- Highlight the cursor's line
vim.o.cursorline = true

-- Highlight the cursor's column
vim.o.cursorcolumn = true

-- Enable incremental search
vim.o.incsearch = true

-- Highlight all search matches
vim.o.hlsearch = true

-- Set tab width to 2 spaces
vim.o.shiftwidth = 2

-- Map 'jk' to escape in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})

-- Visual mode mapping to enter visual block mode with Ctrl+V
vim.api.nvim_set_keymap('x', 'v', '<C-v>', { noremap = true, silent = true })

-- Visual mode mapping to select entire file with ,
vim.api.nvim_set_keymap('x', ',', '<Esc>ggVG', { noremap = true, silent = true })

-- Normal mode mapping to move 10 lines down with J
vim.api.nvim_set_keymap('n', 'J', '10j', { noremap = true, silent = true })

-- Normal mode mapping to move 10 lines up with K
vim.api.nvim_set_keymap('n', 'K', '10k', { noremap = true, silent = true })

-- Normal mode mapping to undo with U
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true, silent = true })

-- Normal mode mapping to go to the next tab with gl
vim.api.nvim_set_keymap('n', 'gl', 'gt', { noremap = true, silent = true })

-- Normal mode mapping to go to the previous tab with gh
vim.api.nvim_set_keymap('n', 'gh', 'gT', { noremap = true, silent = true })

-- Normal mode mapping to scroll cursor to the bottom of the screen with zk
vim.api.nvim_set_keymap('n', 'zk', 'zb', { noremap = true, silent = true })

-- Normal mode mapping to scroll cursor to the top of the screen with zj
vim.api.nvim_set_keymap('n', 'zj', 'zt', { noremap = true, silent = true })

-- Normal mode mapping to open location list with tl
vim.api.nvim_set_keymap('n', 'tl', '<C-l>', { noremap = true, silent = true })

-- Normal mode mapping to open tag list with th
vim.api.nvim_set_keymap('n', 'th', '<C-t>', { noremap = true, silent = true })

-- Normal mode mapping to open a new tab with gk
vim.api.nvim_set_keymap('n', 'gk', ':tabedit<CR>', { noremap = true, silent = true })

-- Normal mode mapping to delete the current buffer with gj
vim.api.nvim_set_keymap('n', 'gj', ':bdelete<CR>', { noremap = true, silent = true })

-- Normal mode mapping to force delete the current buffer with gJ
vim.api.nvim_set_keymap('n', 'gJ', ':bdelete!<CR>', { noremap = true, silent = true })

-- Automatically insert closing brace and place cursor in the middle
-- vim.api.nvim_set_keymap('i', '{', '{}<Left>', {noremap = true})

-- Automatically insert closing bracket and place cursor in the middle
-- vim.api.nvim_set_keymap('i', '[', '[]<Left>', {noremap = true})

-- Automatically insert closing parenthesis and place cursor in the middle
-- vim.api.nvim_set_keymap('i', '(', '()<Left>', {noremap = true})

-- Automatically insert closing angle bracket and place cursor in the middle
-- vim.api.nvim_set_keymap('i', '<', '<><left>', {noremap = true})

-- Automatically insert closing double quotation and place cursor in the middle
-- vim.api.nvim_set_keymap('i', '"', '""<Left>', {noremap = true})

-- Automatically insert closing single quotation and place cursor in the middle
-- vim.api.nvim_set_keymap('i', "'", "''<Left>", {noremap = true})

-- Clear search highlighting with double Escape press in normal mode
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohlsearch<CR>', {noremap = true, silent = true})

-- Map 'ss' to jump to the first non-blank character of the line in normal mode
-- vim.api.nvim_set_keymap('n', 'ss', '^', {noremap = true})

-- Map ';;' to jump to the end of the line in normal mode
-- vim.api.nvim_set_keymap('n', ';;', '$', {noremap = true})

-- Load lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" }
})

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

-- Automatically insert closing brace and place cursor in the middle
vim.api.nvim_set_keymap('i', '{', '{}<Left>', {noremap = true})

-- Automatically insert closing bracket and place cursor in the middle
vim.api.nvim_set_keymap('i', '[', '[]<Left>', {noremap = true})

-- Automatically insert closing parenthesis and place cursor in the middle
vim.api.nvim_set_keymap('i', '(', '()<Left>', {noremap = true})

-- Automatically insert closing angle bracket and place cursor in the middle
vim.api.nvim_set_keymap('i', '<', '<><left>', {noremap = true})

-- Automatically insert closing double quotation and place cursor in the middle
vim.api.nvim_set_keymap('i', '"', '""<Left>', {noremap = true})

-- Automatically insert closing single quotation and place cursor in the middle
vim.api.nvim_set_keymap('i', "'", "''<Left>", {noremap = true})

-- Clear search highlighting with double Escape press in normal mode
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohlsearch<CR>', {noremap = true, silent = true})

-- Map 'ss' to jump to the first non-blank character of the line in normal mode
vim.api.nvim_set_keymap('n', 'hh', '^', {noremap = true})

-- Map ';;' to jump to the end of the line in normal mode
vim.api.nvim_set_keymap('n', 'll', '$', {noremap = true})

-- Create a command 'SS' that sources your .vimrc (useful if still using .vimrc or for similar tasks in init.lua)
vim.api.nvim_create_user_command('SS', 'source ~/.vimrc', {})


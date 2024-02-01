-- Enable line numbers
vim.wo.number = true

-- Enable relative line numbers
vim.wo.relativenumber = true

vim.o.confirm = true

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})

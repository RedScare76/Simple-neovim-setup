-- Set space as the leader key 
vim.g.mapleader = " "

-- Setup nvim-tree keybinding
-- This will map <space>e to toggle nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Map the leader key + t to toggle the terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })

-- Copilot toggle:
vim.api.nvim_set_keymap('n', '<leader>c', ':Copilot<CR>', { noremap = true, silent = true })

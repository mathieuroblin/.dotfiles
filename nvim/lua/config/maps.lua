-- General Mappings
vim.keymap.set({ 'n', 'v' }, '<leader>n', '<cmd>nohlsearch<cr>', { silent = true, desc = 'Turn off search highlighting' })

-- Buffer Management
vim.keymap.set({ 'n' }, '<leader>bd', '<cmd>bdelete<cr>', { silent = true, desc = 'Close buffer' })
vim.keymap.set({ 'n' }, '<leader>bn', '<cmd>bnext<cr>', { silent = true, desc = 'Next buffer' })
vim.keymap.set({ 'n' }, '<leader>bp', '<cmd>bprevious<cr>', { silent = true, desc = 'Previous buffer' })

-- General Mappings
vim.keymap.set({ 'n', 'v' }, '<leader>n', '<cmd>nohlsearch<cr>', { silent = true, desc = 'Turn off search highlighting' })

-- Buffer Management
vim.keymap.set({ 'n' }, '<leader>bd', '<cmd>bdelete<cr>', { silent = true, desc = 'Close buffer' })
vim.keymap.set({ 'n' }, '<leader>bn', '<cmd>bnext<cr>', { silent = true, desc = 'Next buffer' })
vim.keymap.set({ 'n' }, '<leader>bp', '<cmd>bprevious<cr>', { silent = true, desc = 'Previous buffer' })

vim.keymap.set({ 'n' }, '<leader>wk', '<c-w>k', { silent = true, desc = 'Window Up' })
vim.keymap.set({ 'n' }, '<leader>wj', '<c-w>j', { silent = true, desc = 'Window Down' })
vim.keymap.set({ 'n' }, '<leader>wh', '<c-w>h', { silent = true, desc = 'Window Left' })
vim.keymap.set({ 'n' }, '<leader>wl', '<c-w>l', { silent = true, desc = 'Window Right' })
vim.keymap.set({ 'n' }, '<leader>wt', '<c-w>t', { silent = true, desc = 'Window Top' })
vim.keymap.set({ 'n' }, '<leader>wb', '<c-w>b', { silent = true, desc = 'Window Bottom' })
vim.keymap.set({ 'n' }, '<leader>wT', '<c-w>t<c-w>o', { silent = true, desc = 'Window Top Only' })
vim.keymap.set({ 'n' }, '<leader>ww', '<c-w><c-w>', { silent = true, desc = 'Change Window' })
vim.keymap.set({ 'n' }, '<leader>ws', '<cmd>split<cr>', { silent = true, desc = 'Horizontal split' })
vim.keymap.set({ 'n' }, '<leader>wv', '<cmd>vsplit<cr>', { silent = true, desc = 'Vertical split' })
vim.keymap.set({ 'n' }, '<leader>wq', '<cmd>quit<cr>', { silent = true, desc = 'Close' })
vim.keymap.set({ 'n' }, '<leader>wo', '<cmd>only<cr>', { silent = true, desc = 'Close others' })

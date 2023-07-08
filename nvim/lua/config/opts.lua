--[[
     GLOBALS
--]]
-- Changing Leader and LocalLeader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

--[[
--   OPTIONS
--]]
vim.o.splitbelow = true -- Open the split below the current window instead of above
vim.o.splitright = true -- Open the split to the right of the current window instead of the left

vim.o.wrap = false -- Disable line wrap
vim.o.cursorline = false -- Turn on the highlight of the line where the cursor is
vim.o.number = true -- Turn on the line number
vim.o.relativenumber = true -- Turn of relative number of line based on cursor
vim.o.hlsearch = true -- Highlight the search results
vim.o.undofile = true -- Keep a persistent copy of the undo 

vim.o.ignorcase = true -- Ignore case in search pattern -> `\C` at the end of the pattern to turn off
vim.o.smartcase = true -- Only ignore case when the pattern is not in all lowercase

vim.o.termguicolors = true -- Turn on 256 colors
vim.o.completeopt = "menu,noselect" -- Completion window preferences
vim.o.scrolloff = 5 -- Keep n lines of context around the cursos in the window

vim.o.list = true -- Display characters for invisible char
vim.o.expandtab = true -- Insert spaces instead of tabs
vim.o.tabstop = 2 -- Number of spaces for a tab
vim.o.softtabstop = 2 -- Number of spaces for a tab in edit
vim.o.shiftwidth = 2 -- Number of spaces for auto indent
vim.o.smartindent = true -- Keep indent between lines

vim.o.colorcolumn = 80 -- Show a 80 column delimiter

vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"

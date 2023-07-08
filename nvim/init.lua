require('config.opts')

-- Installer Package Manager (LazyVim)
-- Repo: https://github.com/folke/lazy.nvim
-- Usage: https://github.com/folke/lazy.nvim#-usage
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Configure list of plugins and their options
require("lazy").setup({
  -- Git Plugins
  'tpope/vim-fugitive', -- https://github.com/tpope/vim-fugitive

  -- Which Key
  -- https://github.com/folke/which-key.nvim
  { 'folke/which-key.nvim', 
    event = 'VeryLazy',
    init = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 300
    end,
    opts = {
    
    } 
  },

  -- Theme
  -- https://github.com/catppuccin/vim
  {
    'catppuccin/vim',
    name = 'catppuccin', 
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme 'catppuccin_mocha'
    end,
  },
  'itchyny/lightline.vim', -- https://github.com/itchyny/lightline.vim

  -- Clojure Development
  'Olical/conjure'
}, {})

vim.o.termguicolors = true
vim.g.lightline = { colorscheme = 'catppuccin_mocha' }

-- Which Key Config
local wk = require('which-key')
wk.register({
  c = {
    name = 'Connect',
  },
  e = {
    name = 'Evaluate',
    c = { name = 'To Comment' },
  },
  g = {
    name = 'Go to',
  },
  l = {
    name = 'Logs',
  },
  r = {
    name = 'Refresh',
  },
  s = {
    name = 'Session',
  },
  t = {
    name = 'Tests',
  },
  v = {
    name = 'View',
  },
}, { prefix = '<localleader>' })

-- vim.g['conjure#mapping#prefix'] = ",c"

require('config.opts')
require('config.maps')
require('config.cmds')

-- Installer Package Manager (LazyVim)
-- Repo:  https://github.com/folke/lazy.nvim
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
-- All the files inside the `plugins` module (./lua/plugins) are loaded
require("lazy").setup('plugins', {})

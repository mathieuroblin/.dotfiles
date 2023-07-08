--[[
      Module containing all plugins related to UI/Theming of neovim
--]]

return {

  -- https://github.com/catppuccin/vim
  {
    'catppuccin/vim',
    name = 'catppuccin',
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme 'catppuccin_mocha'
    end,
  },

  -- https://github.com/itchyny/lightline.vim
  { 
    'itchyny/lightline.vim',
    config = function ()
      vim.g.lightline = { colorscheme = 'catppuccin_mocha' }
    end,
  },

}

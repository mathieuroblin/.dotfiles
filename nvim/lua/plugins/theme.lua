--[[
      Module containing all plugins related to UI/Theming of neovim
--]]

return {

  -- https://github.com/catppuccin/nvim
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function ()
      local cp = require('catppuccin')

      cp.setup({
        flavour = 'mocha',
        integrations = {
          gitsigns = true,
          telescope = { enabled = true },
          which_key = true,
        },
      })

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },

  -- https://github.com/itchyny/lightline.vim
  {
    'itchyny/lightline.vim',
    config = function ()
      vim.g.lightline = { colorscheme = 'catppuccin' }
    end,
  },
}

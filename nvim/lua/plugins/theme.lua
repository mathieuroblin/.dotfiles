--[[
      Module containing all plugins related to UI/Theming of neovim
--]]

return {

  -- https://github.com/catppuccin/nvim
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    commit = '3ffd2f5',
    priority = 1000,
    config = function ()
      local cp = require('catppuccin')

      cp.setup({
        flavour = 'mocha',
        dim_inactive = {
            enabled = true,
            shade = "dark",
            percentage = 0.15,
        },
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

  -- https://github.com/nvim-lualine/lualine.nvim
  --[[
  {
    'nvim-lualine/lualine.nvim',
    name = 'lualine',
    commit = '05d78e9',
    priority = 1000,
    config = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },
  --]]
}

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
          cmp = true,
          telescope = { enabled = true },
          which_key = true,
        },
      })

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },

  -- https://github.com/nvim-lualine/lualine.nvim
  {
    'nvim-lualine/lualine.nvim',
    name = 'lualine',
    commit = '05d78e9',
    priority = 1000,
    config = function ()
      require('lualine').setup({
        options = {
          theme = 'catppuccin',
        },
      })
    end
    --[[
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    -]]
  },
}

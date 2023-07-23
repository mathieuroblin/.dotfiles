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
          cmp = true,
          gitsigns = true,
          mason = true,
          markdown = true,
          rainbow_delimiters = true,
          telescope = { enabled = true },
          treesitter = true,
          which_key = true,
        },
      })

      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  -- https://github.com/HiPhish/rainbow-delimiters.nvim
  -- {
  --   'HiPhish/rainbow-delimiters.nvim',
  --   name = 'rainbow-delimiters',
  --   config = function ()
  --     local rainbow_delimiters = require 'rainbow-delimiters'
  --
  --     vim.g.rainbow_delimiters = {
  --       strategy = {
  --           [''] = rainbow_delimiters.strategy['global'],
  --           clojure = rainbow_delimiters.strategy['local'],
  --           vim = rainbow_delimiters.strategy['local'],
  --       },
  --       query = {
  --           [''] = 'rainbow-delimiters',
  --           lua = 'rainbow-blocks',
  --       },
  --       highlight = {
  --           -- 'RainbowDelimiterRed',
  --           'RainbowDelimiterYellow',
  --           'RainbowDelimiterBlue',
  --           'RainbowDelimiterOrange',
  --           'RainbowDelimiterGreen',
  --           'RainbowDelimiterViolet',
  --           'RainbowDelimiterCyan',
  --       },
  --     }
  --   end
  -- },

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

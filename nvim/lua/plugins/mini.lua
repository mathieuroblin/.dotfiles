--[[
--  Multi plugins from: https://github.com/echasnovski/mini.nvim.
--]]
return {
  {
    -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-align.md
    --[[
    {
      'echasnovski/mini.align',
      version = '*',
      config = function ()
        require('mini.align').setup({
          mappings = {
            start = '<leader>ga',
            start_with_preview = '<leader>gA',
          },
        })
      end,
    },
    --]]

    -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-jump.md
    {
      'echasnovski/mini.jump',
      tag = 'v0.9.0',
      config = true,
    },

    -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md
    {
      'echasnovski/mini.pairs',
      tag = 'v0.9.0',
      config = true,
    },

    -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-splitjoin.md
    --[[
    {
      'echasnovski/mini.splitjoin',
      version = '*',
    },
    --]]

    -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-surround.md
    -- { 'echasnovski/mini.surround', version = '*' },
  }
}

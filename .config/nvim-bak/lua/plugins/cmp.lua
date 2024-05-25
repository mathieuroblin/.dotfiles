--[[
--  Collection of plugins for completion
--]]
return {
  {
    -- https://github.com/hrsh7th/nvim-cmp
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-path',
      },
      config = function ()
        local cmp = require('cmp')

        cmp.setup({
          sources = {
            { name = 'buffer' },
            { name = 'path' },
            { name = 'nvim_lsp' },
            { name = 'nvim_lua' },
          },
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          }),
        })
      end,
    },
  }
}

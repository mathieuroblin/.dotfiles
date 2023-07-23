--[[
--  Collection of plugins for completion
--]]
return {
  {
    -- https://github.com/hrsh7th/nvim-cmp
    {
      'hrsh7th/nvim-cmp',
      -- event = 'InsertEnter',
      dependencies = {
        -- 'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-path',
        -- TODO move this as dependency of conjure
        'PaterJason/cmp-conjure',
      },
      config = function ()
        local cmp = require('cmp')

        cmp.setup({
          sources = {
            { name = 'conjure' },
            { name = 'path' },
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

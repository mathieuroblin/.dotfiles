return {
  {
    -- https://github.com/folke/trouble.nvim
    {
      'folke/trouble.nvim',
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
        height = 15,
        use_diagnostic_signs = true,
      },
      config = function (_, opts)
        local wk = require('which-key')
        local tr = require('trouble')

        tr.setup(opts)
        wk.register({
          ['t'] = {
            name = 'Trouble',
            ['d']  = { function() require('trouble').open("document_diagnostics") end , 'Document Diagnostics' },
            ['l']  = { function() require('trouble').open("loclist") end , 'Loclist' },
            ['q']  = { function() require('trouble').open("quickfix") end , 'Quickfix' },
            ['r']  = { function() require('trouble').open("lsp_references") end , 'LSP References' },
            ['t']  = { function() require('trouble').open() end , 'Open trouble' },
            ['w']  = { function() require('trouble').open("workspace_diagnostics") end , 'Workspace Diagnostics' },
          }
        }, { prefix = '<leader>' })
      end,
    },
  }
}

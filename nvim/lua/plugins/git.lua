--[[
      Module containing all of the Git related plugins
--]]

return {

  {
    -- https://github.com/tpope/vim-fugitive
    'tpope/vim-fugitive',
    commit = '43f18ab',
    pin = true,
    config = function ()
      local wk = require('which-key')

      wk.register({
        g = {
          name = 'Git',
          g = { ':Git<cr>', ':Git'},
          ['ll'] = { ':vertical Git log<cr>', 'logs' },
          ['lg'] = {'vertical Git log --graph', 'Graph'},
          L = { ':vertical G log --oneline --graph<cr>', 'logs' },
        },
      }, { prefix = '<leader>' })
    end,
  },

  {
    -- https://github.com/lewis6991/gitsigns.nvim
    'lewis6991/gitsigns.nvim',
    tag = 'v0.6',
    opts = {
      signcolumn = false,  -- Toggle with `:Gitsigns toggle_signs`
      numhl      = true,  -- Toggle with `:Gitsigns toggle_numhl`
    },
    config = function(_, opts)
      local wk = require('which-key')
      local gs = require('gitsigns')

      wk.register({
        h = {
          name = 'Hunks',
          -- b = { ':Gitsigns blame_line<cr>', 'Blame line' },
          P = { ':Gitsigns preview_hunk<cr>', 'Preview hunk' },
          s = { ':Gitsigns stage_hunk<cr>', 'Stage hunk' },
          u = { ':Gitsigns undo_stage_hunk<cr>', 'Undo stage hunk' },
          r = { ':Gitsigns reset_hunk<CR>', 'Reset hunk' },
          -- S = { ':Gitsigns stage_buffer<cr>', 'Stage buffer' },
          -- R = { ':Gitsigns reset_buffer<cr>', 'Reset buffer' },
          n = { ':Gitsigns next_hunk<cr>', 'Next hunk' },
          p = { ':Gitsigns prev_hunk<cr>', 'Prev hunk' },
          -- t = {
          --   name = 'Toggle',
          --   b = { ':Gitsigns toggle_current_line_blame<cr>', 'Curent line blame' },
          --   d = { ':Gitsigns toggle_deleted<cr>', 'Deleted' },
          -- },
          -- d = { ':Gitsigns diffthist<cr>', 'Diff history' },
          -- D = { ':Gitsigns diffhis ~<cr>', 'Diff ~history' },
        },
      }, { prefix = '<leader>' })
      gs.setup(opts)
    end,
  },

}


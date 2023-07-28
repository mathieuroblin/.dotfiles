--[[
--  Configuration for the telescope plugin
--  Repo: https://github.com/nvim-telescope/telescope.nvim
--  Example: https://github.com/armed/dotfiles/blob/master/nvim/lua/config/plugins/telescope.lua
--]]
return {
 'nvim-telescope/telescope.nvim',
  -- branch = '0.1.x',
  commit = '776b509',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local wk = require('which-key')
    local t = require('telescope')

    t.setup({
      defaults = {
        mappings = {
          i = {
            ['<C-h>'] = 'which_key',
          },
        },
      },
      pickers = {
        buffers = {
          show_all_buffers = true,
          sort_lastused = true,
          mappings = {
            i = {
              ["<C-d>"] = "delete_buffer",
            },
            n = {
              ['d'] = 'delete_buffer',
            }
          }
        }
      }
    })

    wk.register({
      ['f'] = {
        name = 'Find',
        ['b'] = { '<cmd>Telescope buffers<cr>', 'Buffers' },
        ['c'] = { '<cmd>Telescope commands<cr>', 'Commands' },
        ['d'] = { '<cmd>Telescope diagnostics<cr>', 'Diagnostics' },
        ['f'] = { '<cmd>Telescope git_files<cr>', 'Files (vcs)' },
        ['F'] = { '<cmd>Telescope find_files<cr>', 'Files (all)' },
        ['H'] = { '<cmd>Telescope help_tags<cr>', 'Help' },
        ['g'] = { '<cmd>Telescope live_grep<cr>', 'Live Grep' },
        ['r'] = { '<cmd>Telescope resume<cr>', 'Resume' },
        ['?'] = { '<cmd>Telescope help_tags<cr>', 'Help Tags' },
        [':'] = { '<cmd>Telescope command_history<cr>', 'Commands History' },
        ['/'] = { '<cmd>Telescope search_history<cr>', 'Search History' },
        ['l'] = {
          name = 'LSPs',
          ['d'] = { '<cmd>Telescope lsp_definitions<cr>', 'Definitions' },
          ['i'] = { '<cmd>Telescope lsp_implementations<cr>', 'Implementations' },
          ['r'] = { '<cmd>Telescope lsp_references<cr>', 'References' },
          ['s'] = { '<cmd>Telescope lsp_document_symbols<cr>', 'Symbols (buffer)' },
          ['S'] = { '<cmd>Telescope lsp_workspace_symbols<cr>', 'Symbols (workspace)' },
          ['t'] = { '<cmd>Telescope lsp_type_definitions<cr>', 'Type definitions' },
          ['<'] = { '<cmd>Telescope lsp_incoming_calls<cr>', 'Incoming Calls' },
          ['>'] = { '<cmd>Telescope lsp_outgoing_calls<cr>', 'Outgoing Calls' },
        },
        ['G'] = {
          name = 'Git',
          ['b'] = { '<cmd>Telescope git_branches<cr>', 'Branches' },
          ['c'] = { '<cmd>Telescope git_commits<cr>', 'Commits' },
          ['s'] = { '<cmd>Telescope git_stash<cr>', 'Stashes' },
        }
      }
    }, { prefix = '<leader>' } )
  end
}

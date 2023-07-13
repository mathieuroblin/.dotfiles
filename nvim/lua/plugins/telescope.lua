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

    wk.register({
      ['f'] = {
        name = 'Find',
        ['b'] = { '<cmd>Telescope buffers<cr>', 'Buffers' },
        ['f'] = { '<cmd>Telescope git_files<cr>', 'Files (vcs)' },
        ['F'] = { '<cmd>Telescope find_files<cr>', 'Files (all)' },
        ['H'] = { '<cmd>Telescope help_tags<cr>', 'Help' },
        ['h'] = { '<cmd>Telescope highlights<cr>', 'Highligths' },
        ['g'] = { '<cmd>Telescope live_grep<cr>', 'Live Grep' },
        ['R'] = { '<cmd>Telescope registers<cr>', 'Registers' },
        ['r'] = { '<cmd>Telescope resume<cr>', 'Resume' },
        ['G'] = {
          name = 'Git',
          ['b'] = { '<cmd>Telescope git_branches<cr>', 'Branches' },
          ['c'] = { '<cmd>Telescope git_commits<cr>', 'Commits' },
          ['d'] = { '<cmd>Telescope git_status<cr>', 'Status' },
          ['s'] = { '<cmd>Telescope git_stash<cr>', 'Stashes' },
        }
      }
    }, { prefix = '<leader>' } )
  end
}

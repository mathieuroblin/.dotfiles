--[[
      Module to encapsultate the Conjure configuration
--]]

return {
  {
    'Olical/conjure',
    lazy = true,
    ft = { 'clojure' },
    config = function ()
      local wk = require('which-key')

      wk.register({
        c = {
          name = 'Connect',
        },
        e = {
          name = 'Evaluate',
          c = { name = 'To Comment' },
        },
        g = {
          name = 'Go to',
        },
        l = {
          name = 'Logs',
        },
        r = {
          name = 'Refresh',
        },
        s = {
          name = 'Session',
        },
        t = {
          name = 'Tests',
        },
        v = {
          name = 'View',
        },
      },
      {
        prefix = '<localleader>'
      })
    end
  },
}

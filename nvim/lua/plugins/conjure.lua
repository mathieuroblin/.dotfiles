--[[
      Module to encapsultate the Conjure configuration
--]]

return {
  {
    'Olical/conjure',
    tag = 'v4.46.0',
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
        ['*'] = {
          ['1'] = { ':ClojureEval *1', 'Last result' },
          ['2'] = { ':ClojureEval *2', 'Next to last result' },
          ['3'] = { ':ClojureEval *3', 'Second to last result' },
          e = { ':ConjureEval *e<cr>', 'Display last exception' },
          E = {
            name = 'Exceptions',
            d = { ':ConjureEval (ex-data *e)<cr>', 'Display last exception\'s data' },
            m = { ':ConjureEval (ex-message *e)<cr>', 'Display last exception\'s message' },
          }
        }
      }, { prefix = '<localleader>' })
    end
  },
}

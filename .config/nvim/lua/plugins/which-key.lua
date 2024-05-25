return {
  -- https://github.com/folke/which-key.nvim
  {
    'folke/which-key.nvim',
    -- commit = 'd871f2b',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },
}

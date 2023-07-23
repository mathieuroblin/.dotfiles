--[[
    General LSP configuration for all available LSPs.
    Probably should be broken down some more in the future.
--]]

local function register_maps(ev)
  require('which-key').register({
    ['gD'] = { vim.lsp.buf.declaration, 'Go to declaration' },
  }, { buffer = ev.buf })
end

return {
  -- https://github.com/williamboman/mason.nvim
  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    config = true,
  },
  -- https://github.com/williamboman/mason-lspconfig.nvim
  {
    'williamboman/mason-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
    },
    config = function()
      require('mason-lspconfig').setup({
        automatic_installation = true,
      })
    end,
  },
  -- https://github.com/neovim/nvim-lspconfig
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig',
      'folke/which-key.nvim',
    },
    config = function()
      local lspconfig = require('lspconfig')

      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#clojure_lsp
      lspconfig.clojure_lsp.setup({})

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          -- register_maps(ev)
        end,
      })
    end,
  },
}

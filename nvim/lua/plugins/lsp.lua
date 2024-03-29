--[[
    General LSP configuration for all available LSPs.
    Probably should be broken down some more in the future.
--]]

local function register_maps(ev)
  local wk = require('which-key')

  wk.register({
    -- Go to
    ['gD'] = { vim.lsp.buf.declaration, 'Go to declaration' },
    ['gd'] = { vim.lsp.buf.definition, 'Go to definition' },
    ['gi'] = { vim.lsp.buf.implementation, 'Go to implementation' },
    ['gT'] = { vim.lsp.buf.type_definition, 'Go to type definition' },
    ['gr'] = { vim.lsp.buf.type_references, 'Go to type references' },
    -- Documentation
    ['K'] = { vim.lsp.buf.hover, 'Display doc hover' },
    ['<c-k>'] = { vim.lsp.buf.signature_help, 'Display doc' },
  }, { buffer = ev.buf })

  wk.register({
    -- Operations
    ['r'] = { vim.lsp.buf.rename, 'Rename' },
    ['a'] = { vim.lsp.buf.code_action, 'Actions', mode = { 'n', 'v' } },
    ['F'] = {
      function()
        vim.lsp.buf.format({ async = true })
      end,
      'Format'
    },
    -- Workspace
    ['Wa'] = { vim.lsp.buf.add_workspace_folder, 'Add workspace folder' },
    ['Wr'] = { vim.lsp.buf.add_workspace_folder, 'Remove workspace folder' },
    ['Wl'] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      'List workspace folders'
    },
  }, { prefix = '<leader>', buffer = ev.buf })

end

local function current_workdir()
  return vim.fn.getcwd()
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
      'folke/which-key.nvim',
      'hrsh7th/nvim-cmp',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig',
    },
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Taken from https://github.com/nvim-lualine/lualine.nvim/blob/05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9/lua/lualine/components/diagnostics/config.lua#L7C9-L7C9
      -- for consistency with lualine
      vim.fn.sign_define('DiagnosticSignError', { text = '󰅚 ', texthl = 'DiagnosticSignError' })
      vim.fn.sign_define('DiagnosticSignWarn',  { text = '󰀪 ', texthl = 'DiagnosticSignWarn'  })
      vim.fn.sign_define('DiagnosticSignHint',  { text = '󰌶 ', texthl = 'DiagnosticSignHint'  })
      vim.fn.sign_define('DiagnosticSignInfo',  { text = '󰋽 ', texthl = 'DiagnosticSignInfo'  })

      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#clojure_lsp
      lspconfig.clojure_lsp.setup({
        root_dir = current_workdir,
        capabilities = capabilities,
      })

      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver
      lspconfig.tsserver.setup({
        cmd = { 'npx', "typescript-language-server", "--stdio" },
        capabilities = capabilities,
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          register_maps(ev)
        end,
      })
    end,
  },
}

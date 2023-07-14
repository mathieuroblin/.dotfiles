--[[
--  Module to contain all the treesitter related plugins.
--  nvim-treesitter is a "package" manager for treesitter definitions.
--  Warning: Both the Treesitter and nvim-treesitter are experimental.
--]]

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          "bash",
          "clojure",
          "html",
          -- "fennel",
          "lua",
          "markdown",
          "vim",
          "vimdoc",
          "yaml",
        },
        sync_install = false,
        highlight = {
          enable = true,
        },
      })

      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "nvim_treesitter#foldexpr()"
      vim.o.foldenable = false
    end
  }
}

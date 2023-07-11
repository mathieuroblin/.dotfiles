return {
  "lewis6991/gitsigns.nvim",
  tag = 'v0.6',
  -- event = "BufReadPost",
  opts = {
    current_line_blame_opts = {
      delay = 300,
    },
    signs = {
      add          = { text = ' ' },
      change       = { text = ' ' },
      delete       = { text = ' ' },
      topdelete    = { text = ' ' },
      changedelete = { text = ' ' },
      untracked    = { text = ' ' },
    },
    signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
    numhl      = true,  -- Toggle with `:Gitsigns toggle_numhl`
    linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
      follow_files = true
    },
    attach_to_untracked = true,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
      -- Options passed to nvim_open_win
      border = 'single',
      style = 'minimal',
      relative = 'cursor',
      row = 0,
      col = 1
    },
    yadm = {
      enable = false
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    local gs = require("gitsigns")
    --[[
    wk.register({
      h = {
        name = "Gitsigns",
        b = { ":Gitsigns blame_line<cr>", "Blame line" },
        p = { ":Gitsigns preview_hunk<cr>", "Preview hunk" },
        s = { ":Gitsigns stage_hunk<cr>", "Stage hunk" },
        u = { ":Gitsigns undo_stage_hunk<cr>", "Undo stage hunk" },
        r = { ":Gitsigns reset_hunk<CR>", "Reset hunk" },
        S = { ":Gitsigns stage_buffer<cr>", "Stage buffer" },
        R = { ":Gitsigns reset_buffer<cr>", "Reset buffer" },
        n = { ":Gitsigns next_hunk<cr>", "Next hunk" },
        N = { ":Gitsigns prev_hunk<cr>", "Prev hunk" },
        t = {
          name = "Toggle",
          b = { ":Gitsigns toggle_current_line_blame<cr>", "Curent line blame" },
          d = { ":Gitsigns toggle_deleted<cr>", "Deleted" },
        },
        d = { ":Gitsigns diffthist<cr>", "Diff history" },
        D = { ":Gitsigns diffhis ~<cr>", "Diff ~history" },
      },
    }, { prefix = "<leader>" })
    --]]
    gs.setup(opts)
  end,
}

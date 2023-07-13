local autogrp = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local function vim_sexp_mappings(args)
  local wk = require('which-key')

  -- TODO make the setup for at least the `o` mode to allow the count
  -- TODO look at what is the `x` mode
  wk.register({
    ['(']  = { '<Plug>(sexp_move_to_prev_bracket)', 'Move to Prev Bracket' },
    [')']  = { '<Plug>(sexp_move_to_next_bracket)', 'Move to Next Bracket' },
    ['b']  = { '<Plug>(sexp_move_to_prev_element_head)', 'Move to Prev Element Head' },
    ['w']  = { '<Plug>(sexp_move_to_next_element_head)', 'Move to Next Element Head' },
    ['ge'] = { '<Plug>(sexp_move_to_prev_element_tail)', 'Move to Prev Element Tail' },
    ['e']  = { '<Plug>(sexp_move_to_next_element_tail)', 'Move to Next Element Tail' },
    ['[['] = { '<Plug>(sexp_move_to_prev_top_element)', 'Move to Prev Top Element' },
    [']]'] = { '<Plug>(sexp_move_to_next_top_element)', 'Move to Next Top Element' },
    ['=='] = { '<Plug>(sexp_indent)', 'Indent Current Form' },
    ['=-'] = { '<Plug>(sexp_indent_top)', 'Indent Top Form' },
    ['<localLeader>'] = {
      ['i'] = { '<Plug>(sexp_insert_at_list_tail)', 'Insert at Tail' },
      ['I'] = { '<Plug>(sexp_insert_at_list_head)', 'Insert at Head' },
      ['o'] = {
        name = "List Operations",
        ['k'] = { '<Plug>(sexp_swap_list_backward)', 'Swap List Backward' },
        ['j'] = { '<Plug>(sexp_swap_list_forward)', 'Swap List Forward' },
        ['h'] = { '<Plug>(sexp_swap_element_backward)', 'Swap Element Backward' },
        ['l'] = { '<Plug>(sexp_swap_element_forward)', 'Swap Element Forward' },

        ['K'] = { '<Plug>(sexp_emit_tail_element)', 'Emit Tail Element' },
        ['J'] = { '<Plug>(sexp_emit_head_element)', 'Emit Head Element' },
        ['H'] = { '<Plug>(sexp_capture_prev_element)', 'Capture Prev Element' },
        ['L'] = { '<Plug>(sexp_capture_next_element)', 'Capture Next Element' },

        ['r'] = { '<Plug>(sexp_raise_list)', 'Raise List' },
        ['R'] = { '<Plug>(sexp_raise_element)', 'Raise Element' },

        ['@'] = { '<Plug>(sexp_splice_list)', 'Splice List' },
      },
      ['w'] = {
        name = 'Wrap',
        ['('] = { '<Plug>(sexp_round_head_wrap_list)', 'Wrap the list between ()' },
        ['['] = { '<Plug>(sexp_square_head_wrap_list)', 'Wrap the list between []' },
        ['{'] = { '<Plug>(sexp_curly_head_wrap_list)', 'Wrap the list between {}' },
        [')'] = { '<Plug>(sexp_round_head_wrap_element)', 'Wrap the element between ()' },
        [']'] = { '<Plug>(sexp_square_head_wrap_element)', 'Wrap the element between []' },
        ['}'] = { '<Plug>(sexp_curly_head_wrap_element)', 'Wrap the element between {}' },
      },
      ['W'] = {
        name = 'Rewrap',
        ['('] = { '<Plug>(sexp_round_head_wrap_list) <Plug>(sexp_splice_list)', 'Wrap the list between ()' },
        ['['] = { '<Plug>(sexp_square_head_wrap_list) <Plug>(sexp_splice_list)', 'Wrap the list between []' },
        ['{'] = { '<Plug>(sexp_curly_head_wrap_list) <Plug>(sexp_splice_list)', 'Wrap the list between {}' },
      },
    },
  }, { buffer = args.buf })
end

return {
  -- https://github.com/guns/vim-sexp
  {
    'guns/vim-sexp',
    commit = '14464d4',
    ft = { "clojure" },
    init = function()
      -- Disable all out of the box bindings
      vim.g.sexp_filetypes = ''
      vim.g.sexp_insert_after_wrap = false
    end,
    -- dependencies = {
    --   'tpope/vim-sexp-mappings-for-regular-people' -- https://github.com/tpope/vim-sexp-mappings-for-regular-people
    -- }
    config = function()
      local sexpgrp = autogrp('Vim Sexp', { clear = true })

      autocmd('FileType', {
        group = sexpgrp,
        pattern = { 'clojure' },
        callback = vim_sexp_mappings
      })
    end
  }
}

-- Open :help <x?> in a vertical split
vim.api.nvim_create_user_command('Velp',
  function(opts)
    if opts.fargs[1] == nil then
      vim.cmd('vert help')
    else
      vim.cmd('vert help ' .. opts.fargs[1])
    end
  end,
  {
    nargs = '?',
    complete = 'help',
  })

" GO
"autocmd FileType go let g:go_fmt_autosave = 1
autocmd FileType go let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment', 'comment']
autocmd FileType go let g:go_auto_type_info = 1
autocmd FileType go let g:go_highlight_extra_types = 1
autocmd FileType go let g:go_highlight_operators = 1
autocmd FileType go let g:go_highlight_functions = 1
autocmd FileType go let g:go_highlight_function_parameters = 1
autocmd FileType go let g:go_highlight_function_calls = 1
autocmd FileType go let g:go_highlight_types = 1
autocmd FileType go let g:go_highlight_fields = 1
autocmd FileType go let g:go_highlight_generate_tags = 1
autocmd FileType go let g:go_highlight_format_strings = 1
autocmd FileType go let g:go_highlight_variable_declarations = 1
autocmd FileType go let g:go_highlight_variable_assignments = 1
autocmd FileType go let g:go_fmt_command = "gopls"
autocmd FileType go let g:go_imports_mode = "gopls"

augroup go_config
  autocmd!
  autocmd FileType go nnoremap <buffer> <LocalLeader>a :GoAlternate<CR>
  "autocmd FileType go nnoremap <buffer> <LocalLeader>D :GoDef<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>dg :GoDiagnostics<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>dc :GoDoc<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>f :GoFmt<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>S :GoImpl<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>s :GoImplements<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>i :GoImport 
  autocmd FileType go nnoremap <buffer> <LocalLeader>I :GoImports<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>l :GoMetaLinter<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>t :GoTest<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>tc :GoTestCompile<CR>
  autocmd FileType go nnoremap <buffer> <LocalLeader>tf :GoTestFunc<CR>
augroup END

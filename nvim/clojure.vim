if filereadable(glob('~/Desktop/tooling/clj-kondo'))
	au User lsp_setup call lsp#register_server({
  \   'name': 'kondo-lsp',
	\   'cmd': {server_info->[&shell, &shellcmdflag, 'java -jar ~/Desktop/tooling/clj-kondo']},
	\   'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'deps.edn'))},
  \   'whitelist': ['clojure'],
  \ })
endif

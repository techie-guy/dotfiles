vim.cmd('set clipboard+=unnamedplus')

vim.g.clipboard = {
	name = 'win32yank',
	copy = {
		['+'] = 'D:\\dev\\programs\\win32yank\\win32yank.exe -i --crlf',
		['*'] = 'D:\\dev\\programs\\win32yank\\win32yank.exe -i --crlf'
	},
	paste = {
		['+'] = 'D:\\dev\\programs\\win32yank\\win32yank.exe -o --lf',
		['*'] = 'D:\\dev\\programs\\win32yank\\win32yank.exe -o --lf',
	},
	cache_enabled = true,
}

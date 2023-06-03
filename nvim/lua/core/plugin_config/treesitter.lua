-- Treesitter Config
--require('nvim-treesitter.parsers').get_parser_configs().asm = {
--    install_info = {
--        url = 'https://github.com/rush-rs/tree-sitter-asm.git',
--        files = { 'src/parser.c' },
--        branch = 'main',
--    },
--}

require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"c", "cpp", "rust", "lua", "vim", "vimdoc", "query", "html", "css", "glsl", "make", "python"
	},

	sync_install = false,
	auto_install = false,

	highlight = {
		enable = true,

		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
	},
}

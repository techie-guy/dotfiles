vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[highlight NvimTreeFolderIcon guifg=#ebc334]])

require("nvim-tree").setup {
	git = {
		enable = false,
	},
}

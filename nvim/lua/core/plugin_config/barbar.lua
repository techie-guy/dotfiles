vim.g.barbar_auto_setup = false

require'barbar'.setup {
	animation = false,
	clickable = true,
	focus_on_close = 'left',

	icons = {
    	-- Configure the base icons on the bufferline.
	    -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
    	buffer_index = false,
	    buffer_number = false,
	    button = '',
    	-- Enables / disables diagnostic symbols
	    diagnostics = {
			[vim.diagnostic.severity.ERROR] = {enabled = true, icon = ''},
			[vim.diagnostic.severity.WARN] = {enabled = false},
			[vim.diagnostic.severity.INFO] = {enabled = false},
			[vim.diagnostic.severity.HINT] = {enabled = true},
		},
		filetype = {
			-- Sets the icon's highlight group.
			-- If false, will use nvim-web-devicons colors
		    custom_colors = false,
			-- Requires `nvim-web-devicons` if `true`
			enabled = true,
		},
	    separator = {left = '▎', right = ''},

		-- If true, add an additional separator at the end of the buffer list
	    separator_at_end = true,

		-- Configure the icons on the bufferline when modified or pinned.
    	-- Supports all the base icon options.
		modified = {button = '●'},
    	pinned = {button = '', filename = true},

		-- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
		preset = 'default',

		-- Configure the icons on the bufferline based on the visibility of a buffer.
    	-- Supports all the base icon options, plus `modified` and `pinned`.
		alternate = {filetype = {enabled = false}},
    	current = {buffer_index = true},
	    inactive = {button = '×'},
	    visible = {modified = {buffer_number = false}},
	},

	sidebar_filetypes = {
		NvimTree = true,
    	Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
	},
}

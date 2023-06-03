local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
 
  -- Themes
  use 'Mofiqul/vscode.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use { 'bluz71/vim-moonfly-colors', as = 'moonfly' }
  use 'nyoom-engineering/oxocarbon.nvim'
  use "Alexis12119/nightly.nvim"
  use "felipeagc/fleet-theme-nvim"
  use "doums/darcula"
  use "junegunn/seoul256.vim"
 -- use "loctvl842/monokai-pro.nvim"
  -----
  
  use "lukas-reineke/indent-blankline.nvim"
  use "NvChad/nvim-colorizer.lua"
  use "windwp/nvim-autopairs"

  use {
	'akinsho/bufferline.nvim',
	tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  use {
	'nvim-lualine/lualine.nvim',
	requires = {
	    'nvim-tree/nvim-web-devicons',
	},
  }

  use {
	'goolord/alpha-nvim',
	requires = { 'nvim-tree/nvim-web-devicons' },
  }

  use {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons',
    },
  }

  use { 'hrsh7th/nvim-cmp' }
  use { 'neovim/nvim-lspconfig' }

  use {
	'nvim-telescope/telescope.nvim', 
	branch = '0.1.x',
	requires = {
		{'nvim-lua/plenary.nvim'} 
	}
  }

  use {
	'nvim-treesitter/nvim-treesitter',
--		'rush-rs/tree-sitter-asm',
	run = ':TSUpdate'
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

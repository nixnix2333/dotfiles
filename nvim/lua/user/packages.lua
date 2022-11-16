vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- autopairs
  use {
	  "windwp/nvim-autopairs",
	  config = function() require("nvim-autopairs").setup {} end
  }

  -- term
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup {
		  open_mapping = [[<c-t>]],
		  direction = 'float',
	  }
  end}

  -- color scheme
  use 'bluz71/vim-nightfly-colors'
  vim.cmd [[colorscheme nightfly]]

end)

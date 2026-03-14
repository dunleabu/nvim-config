return {
	{'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
         dependencies = { 'nvim-lua/plenary.nvim' }
        },
	{'akinsho/bufferline.nvim', version = '*',
	 dependencies = 'nvim-tree/nvim-web-devicons'
	},
	{'nvim-lualine/lualine.nvim',
	 dependencies = 'nvim-tree/nvim-web-devicons'
	},
	{
	 'lewis6991/gitsigns.nvim'
        },
	{'akinsho/toggleterm.nvim', version = '*',
	 config = true
	},
}



return {

 {'morhetz/gruvbox'},
 {
    "jpwol/thorn.nvim",
    lazy = false,
    priority = 1000,
    opts = {}
    },

{
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('bamboo').setup {
      -- optional configuration here
    }
    require('bamboo').load()
  end,
},

{
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
}


}

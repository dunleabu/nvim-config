vim.opt.termguicolors = true
vim.cmd.colorschem("zaibatsu")

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
require("config.lazy")





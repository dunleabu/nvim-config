
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local trim_spaces = false

keymap("n", "<leader>pv", vim.cmd.Ex)

keymap("n", "<leader>bb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

keymap("n", "<leader>tt", ":ToggleTerm<CR>", opts)
keymap("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", opts)
keymap("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", opts)
keymap("v", "<space>s", function()
    require("toggleterm").send_lines_to_terminal("visual_lines", trim_spaces, {args = vim.v.count }) end)

require("config.lazy")
require("bufferline").setup{options={mode="tabs"}}
require("toggleterm").setup{
  start_in_insert = false,
  use_bracketed_paste = true,
}

function _G.set_terminal_keymaps()
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
end

vim.cmd "autocmd! BufEnter term://* lua set_terminal_keymaps()"

-- require("lualine").setup{} --fill!

vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_contrast_ligh = "hard"
vim.cmd.colorschem("zaibatsu")



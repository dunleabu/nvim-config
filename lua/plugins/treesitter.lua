return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "clojure" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
  },
}

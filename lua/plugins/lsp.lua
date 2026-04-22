return {
  {
    "neovim/nvim-lspconfig",
    ft = { "clojure" },
    config = function()
      vim.lsp.enable("clojure_lsp")
    end,
  },
}

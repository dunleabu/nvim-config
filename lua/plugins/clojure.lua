return {
  {
    "Olical/conjure",
    ft = { "clojure", "fennel" },
  },
  {
    "julienvincent/nvim-paredit",
    ft = { "clojure", "fennel" },
    config = function()
      require("nvim-paredit").setup()
    end,
  },
}

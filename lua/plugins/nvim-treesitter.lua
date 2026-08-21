return {
  "nvim-treesitter/nvim-treesitter",
  name = "nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    inlay_hints = { enable = false },
  },
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {
        "c",
        "cpp",
        "c_sharp",
        "lua",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
        "query",
      },

      auto_install = true,

      install_dir = vim.fn.stdpath("data"),

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
    })
  end,
}

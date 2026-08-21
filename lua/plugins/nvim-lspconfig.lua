return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Fix conflicts with easy dotnet plugin
      roslyn = { enabled = false },
      omnisharp = { enabled = false },
      csharp_ls = { enabled = false },

      -- CPP settings
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--fallback-style=webkit",
        },
      },
    },

    -- Fix conflicts with easy dotnet plugin
    setup = {
      roslyn = function()
        return true
      end,
      omnisharp = function()
        return true
      end,
      csharp_ls = function()
        return true
      end,
    },
  },
}

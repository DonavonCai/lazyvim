return {
  "GustavEikaas/easy-dotnet.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/snacks.nvim",
  },
  opts = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    if pcall(require, "cmp_vim_lsp") then
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
    end
  end,
  config = function()
    require("easy-dotnet").setup()
  end,
}

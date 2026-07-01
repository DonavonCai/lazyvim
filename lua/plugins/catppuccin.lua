require("catppuccin").setup({
    auto_integrations = true
})

return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 2000,
    lazy = false,
    config = function()
        vim.cmd.colorscheme("catppuccin-mocha")
    end,
}

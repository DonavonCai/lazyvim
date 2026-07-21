return {
    "nvim-treesitter/nvim-treesitter",
    name = "nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.config").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
            
            auto_install = true,
            
            highlight = {
                enable = true,
            },
            
            install_dir = vim.fn.stdpath("data"),

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "gnn",
                    node_incremental = "grn",
                    scope_incremental = "grc",
                    node_decremental = "grm"
                }
            }
        })
    end
}

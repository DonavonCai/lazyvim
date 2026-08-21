return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        clang_format = {
          -- Prepend fallback styles if no .clang-format file is found
          prepend_args = { "--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4}" },
        },
      },
    },
  },
}

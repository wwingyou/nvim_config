return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "tsserver", "jdtls", "rust_analyzer", "html", "cssls", "ruby_ls" },
        automatic_installation = false,
        handlers = nil,
    },
    config = true,
  }
}

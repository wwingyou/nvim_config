return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "tsserver", "java_language_server", "rust_analyzer", "html", "cssls", "ruby_ls" },
        automatic_installation = false,
        handlers = nil,
    },
    config = true,
  }
}

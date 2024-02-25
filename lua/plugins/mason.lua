return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "tsserver", "java_language_server", "rust_analyzer", "html", "cssls", "ruby_ls" },
        automatic_installation = false,
        handlers = nil,
      }
    end
  }
}

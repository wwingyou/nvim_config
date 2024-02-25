return {
  "neovim/nvim-lspconfig",
  config = function() 
    local lspconfig = require("lspconfig")
    lspconfig.tsserver.setup {}
    lspconfig.java_language_server.setup {}
    lspconfig.rust_analyzer.setup {}
    lspconfig.ruby_ls.setup {}
    --Enable (broadcasting) snippet capability for completion
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    lspconfig.html.setup {
      capabilities = capabilities,
    }
    lspconfig.cssls.setup {
      capabilities = capabilities,
    }
  end
}


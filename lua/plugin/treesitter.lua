return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  dependencies = {
    'windwp/nvim-ts-autotag'
  },
  opts = {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query",
      "java", "python", "javascript", "html", "css",
      "regex", "bash", "markdown", "markdown_inline", "ruby" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
    autotag = { 
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
    },
  },
  config = true
} 

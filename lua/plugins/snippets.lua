return {
  {
    "hrsh7th/vim-vsnip"
  }, 
  {
    "hrsh7th/vim-vsnip-integ"
  },
  { 
    "rafamadriz/friendly-snippets" 
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function() 
      require("luasnip.loaders.from_vscode").lazy_load();
      local ls = require("luasnip")
      vim.keymap.set({"i", "s", "n"}, "<Tab>", function()
        return ls.expand_or_jumpable() and ls.expand_or_jump() or "<Tab>"
      end, { expr = true, silent = true})
      vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})

      require('luasnip').filetype_extend("javascript", {"react"})
    end
  }
}

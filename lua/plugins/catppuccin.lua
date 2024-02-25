return { 
  "catppuccin/nvim", 
  lazy = false, 
  name = "catppuccin", 
  priority = 1000,
  config = function() 
    require("catppuccin").setup {
      custom_highlights = function(colors)
        return {
          WinSeparator = { fg = colors.overlay0 },
        }
      end,
      integrations = {
        treesitter = true,
        notify = true,
      }
    }
    vim.cmd.colorscheme "catppuccin-mocha"
  end
}

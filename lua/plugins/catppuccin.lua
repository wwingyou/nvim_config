return { 
  "catppuccin/nvim", 
  lazy = false, 
  name = "catppuccin", 
  priority = 1000,
  config = function() 
    require("catppuccin").setup {
      integrations = {
        neotree = true,
        notify = true,
      },
      custom_highlights = function(colors)
        return {
          WinSeparator = { fg = colors.overlay0 },
        }
      end
    }
    vim.cmd.colorscheme "catppuccin-mocha"
  end
}

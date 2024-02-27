return {
  'rcarriga/nvim-notify',
  opts = {
    stages = 'slide',
    render = 'compact',
    timeout = 3000
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    local notify = require("notify")
    notify.setup(opts)
    vim.notify = notify
  end
}

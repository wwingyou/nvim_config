return {
  'rcarriga/nvim-notify',
  opts = {
    stages = 'slide',
    render = 'minimal',
    timeout = 3000
  },
  config = function()
    vim.opt.termguicolors = true
    vim.notify = require('notify')
  end
}

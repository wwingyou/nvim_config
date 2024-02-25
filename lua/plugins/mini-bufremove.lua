return {
  'echasnovski/mini.bufremove', 
  version = false,
  config = function()
    require'mini.bufremove'.setup()
    vim.keymap.set('n', '<leader>q', function()
      local bd = require('mini.bufremove').delete
      if vim.bo.modified then
        local choice = vim.fin.confirm(("변경 사항을 저장하시겠습니까? (%q)"):format(vim.fn.bufname()), "&저장\n&저장안함\n&취소")
        if choice == 1 then
          vim.cmd.write()
          bd(0)
        elseif choice == 2 then
          bd(0, true)
        end
      else
        bd(0)
      end
    end, { desc = "Delete Buffer" })
  end
}

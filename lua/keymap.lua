-- switch window
vim.keymap.set('n', '<leader>w', '<C-W>w', {})

-- noice
vim.keymap.set('n', '<leader>n', ':Noice telescope<cr>', {})

-- neogit
vim.keymap.set('n', '<leader>v', ':Neogit<cr>', { silent = true })

-- quit buffer
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

-- neo-tree
vim.keymap.set('n', '<leader>e', function() vim.cmd(':Neotree reveal float') end, {})
vim.keymap.set('n', '<leader>/', function() vim.cmd(':Neotree toggle left') end, {})

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

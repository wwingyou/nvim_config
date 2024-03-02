return {
  "s1n7ax/nvim-terminal",
  config = function()
    local function is_terminal_window()
      local current_bufnr = vim.fn.bufnr('%')
      return vim.fn.getbufvar(current_bufnr, '&buftype') == 'terminal'
    end

    vim.o.hidden = true
    require('nvim-terminal').setup()
    terminal = require('nvim-terminal').DefaultTerminal
    prev_window = vim.api.nvim_get_current_win()
    terminal_window = NTGlobal.window
    local terminal_index = 0

    -- switch terminal and get into terminal mode immediately
    local function to_terminal_window(index)
      if is_terminal_window() == false then
        prev_window = vim.api.nvim_get_current_win()
      end
      local command = ''
      if terminal_window:is_valid() then
        if terminal_index ~= index then 
          command = ':lua terminal:open('..index..')<cr>:lua terminal_window:focus()<cr>a'
        else 
          command = ':lua terminal_window:focus()<cr>a'
        end
      end
      terminal_index = index
      return command
    end

    -- TODO: \키로 터미널 토글링
    vim.keymap.set('n', '<leader>t', function() 
      if is_terminal_window() == false then
        prev_window = vim.api.nvim_get_current_win()
      end
      return terminal_window:is_valid() and ':lua terminal:toggle()<cr>' or ':lua terminal:toggle()<cr>a'
    end, { silent = true, expr = true })

    vim.keymap.set('t', "<Esc>", function()
      vim.api.nvim_set_current_win(prev_window)
    end, { silent = true })

    vim.keymap.set('n', '<leader>1', function() return to_terminal_window(1) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>2', function() return to_terminal_window(2) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>3', function() return to_terminal_window(3) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>4', function() return to_terminal_window(4) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>5', function() return to_terminal_window(5) end, { silent = true, expr = true })

    -- switch terminal and get into terminal mode immediately
    local function to_terminal_window(index)
      if is_terminal_window() == false then
        prev_window = vim.api.nvim_get_current_win()
      end
      local command = ''
      if terminal_window:is_valid() then
        if terminal_index ~= index then 
          command = ':lua terminal:open('..index..')<cr>:lua terminal_window:focus()<cr>a'
        else 
          command = ':lua terminal_window:focus()<cr>a'
        end
      else 
        command = ':lua terminal:open('..index..')<cr>a'
      end
      terminal_index = index
      return command
    end

    vim.keymap.set('n', '<leader>t', function() 
      if is_terminal_window() == false then
        prev_window = vim.api.nvim_get_current_win()
      end
      return terminal_window:is_valid() and ':lua terminal:toggle()<cr>' or ':lua terminal:toggle()<cr>a'
    end, { silent = true, expr = true })

    vim.keymap.set('t', "<Esc>", function()
      vim.api.nvim_set_current_win(prev_window)
    end, { silent = true })

    vim.keymap.set('n', '<leader>1', function() return to_terminal_window(1) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>2', function() return to_terminal_window(2) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>3', function() return to_terminal_window(3) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>4', function() return to_terminal_window(4) end, { silent = true, expr = true })
    vim.keymap.set('n', '<leader>5', function() return to_terminal_window(5) end, { silent = true, expr = true })

  end
}

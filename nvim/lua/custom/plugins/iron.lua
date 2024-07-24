return {
  {
    'Vigemus/iron.nvim',
    config = function()

      local iron = require 'iron.core'
      iron.setup {
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            sh = {
              -- Can be a table or a function that
              -- returns a table (see below)
              command = { 'zsh' },
            },
          },
          -- How the repl window will be displayed
          -- See below for more information
          repl_open_cmd = require('iron.view').right('50%'),
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the functions in iron.core
        keymaps = {
          send_motion = '<space>is',
          visual_send = '<space>is',
          send_file = '<space>if',
          send_line = '<space>il',
          send_paragraph = '<space>ip',
          send_until_cursor = '<space>iu',
          send_mark = '<space>ims',
          mark_motion = '<space>imc',
          mark_visual = '<space>imc',
          remove_mark = '<space>imd',
          cr = '<space>r<cr>',
          interrupt = '<space>rc',
          exit = '<space>rq',
          clear = '<space>rl',
        },
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      }

      -- iron also has a list of commands, see :h iron-commands for all available commands
      vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
      vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
      vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
      vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')
    end,
  },
}

-- iron also has a list of commands, see :h iron-commands for all available commands
-- vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
-- vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
-- vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
-- vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')

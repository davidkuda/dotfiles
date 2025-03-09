return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        win_options = {
          signcolumn = 'yes:2',
        },
        columns = {
          'icon',
          -- 'permissions',
          -- 'size',
          -- 'mtime',
        },
        watch_for_changes = true,
        keymaps = {
          ['<C-h>'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        view_options = {
          show_hidden = true,
        },
      }
      -- Open parent directory in current window
      vim.keymap.set('n', '<Leader>n', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },

  {
    'refractalize/oil-git-status.nvim',

    dependencies = {
      'stevearc/oil.nvim',
    },

    config = true,
  },
}

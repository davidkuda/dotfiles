return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {

      view = {
        -- width = 30,
        width = 80,
        float = {
          enable = true,
        },
      },

      sort = {
        sorter = 'case_sensitive',
      },

      renderer = {
        group_empty = true,
      },
    }

    vim.keymap.set('n', '<Leader>m', '<CMD>NvimTreeToggle<CR>')
  end,
}

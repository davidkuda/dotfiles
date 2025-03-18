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

      filters = {
        dotfiles = true,
      },
    }

    vim.keymap.set('n', '<Leader>-', '<CMD>NvimTreeToggle<CR>')
  end,
}

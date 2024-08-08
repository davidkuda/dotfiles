-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'Pocco81/auto-save.nvim',
    config = function()
      require('auto-save').setup {
        -- your config goes here
        -- or just leave it empty :)
      }
    end,
  },

  {
    'azabiong/vim-highlighter',
    init = function() end,
    -- vim.cmd([[
    -- let HiSet   = 'f<CR>'
    -- let HiErase = 'f<BS>'
    -- let HiClear = 'f<C-L>'
    -- let HiFind  = 'f<Tab>'
    -- let HiSetSL = 't<CR>'
    -- ]])
    -- config = function()
    --   vim.keymap.set("n", "<Leader>hs", "<CMD>HiSet<CR>", {desc="[h]ighlight [s]et"})
    --   vim.keymap.set("n", "<Leader>hr", "<CMD>HiErase<CR>", {desc="[h]ighlight [r]emove"})
    --   vim.keymap.set("n", "<Leader>hl", "<CMD>HiClear<CR>", {desc="[h]ighlight c[l]ear"})
    -- end
  },

  { 'akinsho/git-conflict.nvim', version = '*', config = true },

  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false }
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    'sunjon/shade.nvim',
    opts = {
      overlay_opacity = 70,
      opacity_step = 1,
      keys = {
        brightness_up    = '<Leader>hk',
        brightness_down  = '<Leader>hk',
        toggle           = '<Leader>ht',
      }
    }
  }
}

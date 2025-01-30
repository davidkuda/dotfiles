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
        -- make it compatible with harpoon (https://github.com/ThePrimeagen/harpoon/issues/434):
        condition = function(buf)
          if vim.bo[buf].filetype == 'harpoon' then
            return false
          end
          if vim.bo[buf].filetype == 'oil' then
            return false
          end
          -- ... the rest of your condition code
        end,
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

-- NOTE:
  -- Highlight TODO, NOTE, FIX, HACK, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      signs = true,
      keywords = {
        TODO = { icon = ' ', color = 'test' },
      },
    },
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
}

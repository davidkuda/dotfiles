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
    init = function()
      -- settings
    end,
  },
  { 'akinsho/git-conflict.nvim', version = '*', config = true },
}

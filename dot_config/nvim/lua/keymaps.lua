-- [[ Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- Diagnostic Config & Keymaps
-- See `:help vim.diagnostic.Opts`
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.diagnostic.config {
  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float {
        bufnr = bufnr,
        scope = 'cursor',
        focus = false,
      }
    end,
  },
}


--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- David:
-- copy to clipboard
vim.keymap.set('v', 'Y', '"+y')
vim.keymap.set('n', 'Y', '"+yy')

-- show / hide normal line numbers, when someone is watching my screen
vim.keymap.set('n', '<leader>cr', ':set relativenumber<CR>')
vim.keymap.set('n', '<leader>cn', ':set norelativenumber<CR>')

-- working with tabs
-- inspiration: https://github.com/nanozuki/tabby.nvim?tab=readme-ov-file#key-mapping-example
vim.keymap.set('n', '<Leader>tr', ':TabRename ', { desc = '[t]ab [r]ename' })
vim.keymap.set('n', '<leader>tn', ':$tabnew<CR>:TabRename ', { desc = '[t]ab new with name' })
vim.keymap.set('n', '<leader>tj', ':$tabnew<CR>', { desc = '[t]ab new ("down")' })
vim.keymap.set('n', '<leader>tk', ':tabclose<CR>', { desc = '[t]ab close ("up")' })
-- vim.keymap.set('n', '<leader>to', ':tabonly<CR>', { desc = '[t]ab '})
vim.keymap.set('n', '<leader>th', 'gT', { desc = '[t]ab previous ("left")' })
vim.keymap.set('n', 'gh', 'gT', { desc = 'previous tab' })
vim.keymap.set('n', 'gl', 'gt', { desc = 'next tab' })
-- move current tab to previous position
vim.keymap.set('n', '<leader>tH', ':-tabmove<CR>', { desc = '[t]ab move left' })
-- move current tab to next position
vim.keymap.set('n', '<leader>tL', ':+tabmove<CR>', { desc = '[t]ab move right' })

-- folds:
vim.keymap.set('n', '<leader>f', 'za', { desc = 'toggle [f]old' })

-- close a window:
vim.keymap.set('n', '<C-x>', ':x<CR>', { desc = 'e[x]it window: close the active window' })

-- toggle cursor column:
local function toggle_cursorcolumn()
  if vim.opt_local.cursorcolumn:get() then
    vim.opt_local.cursorcolumn = false
  else
    vim.opt_local.cursorcolumn = true
  end
end
vim.keymap.set('n', '<Leader>tc', toggle_cursorcolumn, { noremap = true, silent = true })

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- David's InsertMode KeyMaps:
-- comma comma => go down a line
vim.keymap.set('i', ',,', '<Esc>A,<Enter>')

-- Go: if err != nil {}
vim.keymap.set('i', 'errnil', 'err != nil {}<Esc>i<Enter>')
vim.keymap.set('i', 'ierrn', 'if err != nil {<Enter>\treturn nil, err<Enter><Backspace>}<Esc>')

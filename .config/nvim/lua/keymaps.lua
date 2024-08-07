vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

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
vim.keymap.set('n', '<leader>tl', 'gt', { desc = '[t]ab next ("right")' })
-- move current tab to previous position
vim.keymap.set('n', '<leader>tH', ':-tabmove<CR>', { desc = '[t]ab move left' })
-- move current tab to next position
vim.keymap.set('n', '<leader>tL', ':+tabmove<CR>', { desc = '[t]ab move right' })

-- folds:
vim.keymap.set('n', '<leader>f', 'za', { desc = 'toggle [f]old' })

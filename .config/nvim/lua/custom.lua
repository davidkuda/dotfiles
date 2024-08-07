vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })

local gitsigns = require('gitsigns')
vim.keymap.set('v', '<leader>gsh', function()
    gitsigns.stage_hunk { vim.fn.line('.'), vim.fn.line('v') }
  end,
  { desc = '[g]it [s]tage [h]unk' }
)

vim.keymap.set('n', '<leader>gsb', gitsigns.stage_buffer, { desc = '[g]it [s]tage [b]uffer' })
vim.keymap.set('n', '<leader>gu', gitsigns.undo_stage_hunk, { desc = '[g]it [u]ndo last stage' })

vim.keymap.set('n', ']c', function()
    if vim.wo.diff then
      vim.cmd.normal({ ']c', bang = true })
    else
      gitsigns.nav_hunk('next')
    end
  end,
  { desc = 'Go to next git [C]hanges' }
)

vim.keymap.set('n', '[c', function()
    if vim.wo.diff then
      vim.cmd.normal({ '[c', bang = true })
    else
      gitsigns.nav_hunk('prev')
    end
  end,
  { desc = 'Go to previous git [C]hanges' }
)
